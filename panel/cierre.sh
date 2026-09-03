#!/usr/bin/env bash
# cierre.sh — aplica la máquina de estados del SRS y reescribe el progreso.
#
# El modelo puntúa; este script calcula. Implementa EXACTAMENTE
# `estructuras/logica-estructuras.md` §5 y `verbos/logica-verbos.md` §7,
# sin añadir reglas propias.
#
# Uso:
#   bash panel/cierre.sh <ingles|verbs> <examen|refuerzo> [--dry-run] <<'EOF'
#   OK    it turns out (that)
#   FAIL  can't be bothered
#   REG   At first…, but then…
#   EOF
#
# Notas aceptadas:  STAR|🌟 · OK|✅ · REG|⚠️ · FAIL|❌
#
# EL 🌟 NO CAMBIA EL INTERVALO: sube un peldaño, exactamente igual que un ✅
# (siempre de uno en uno, nunca dos). Lo único que hace de más es contarse en la
# columna `Nativas`, que es un SUBCONJUNTO de `Bien` — sirve para saber qué le
# sale ya nativo, no para acelerar la repetición espaciada.
# El nombre va literal, tal como aparece en la columna clave del progreso.
#
# En REFUERZO, un FAIL tiene que descontar la nota que el ítem se llevó HOY en el
# examen, no la mejor que haya en la fila. El script la deduce del estado cuando
# puede (🔴 = hoy fue ❌ · ✅ = hoy fue ✅); si la fila está en 🟡 es ambigua
# (pudo ser ✅ o ⚠️) y hay que decírselo con `FAIL/OK` o `FAIL/REG`:
#
#   FAIL/OK    it turns out (that)      → hoy sacó ✅ en el examen, ahora falla
#   FAIL/REG   At first…, but then…     → hoy sacó ⚠️ en el examen, ahora falla
#
# Si es ambigua y no se le pasa, ABORTA sin escribir: antes descontaba de `Bien`
# a ciegas y podía borrar un acierto de otro día.
#
# LA SALIDA FÁCIL. Si en vez del ítem dijo otra cosa, se anota detrás de un `~`
# y va a la columna de diagnóstico (`Esquiva` en ingles · `Sustituto` en verbs):
#
#   FAIL  can't be bothered  ~ didn't feel like
#   OK    can't be bothered  ~ —          (ya no la esquiva: limpia la columna)
#
# Se escribe siempre, también en refuerzo y aunque la nota no cambie la fila:
# es diagnóstico, no puntuación.
#
# Las columnas se resuelven POR NOMBRE DE CABECERA, no por posición: añadir
# una columna al progreso no rompe este script.

set -euo pipefail
cd "$(dirname "$0")/.." || exit 1

EJ=${1:-}; TIPO=${2:-}; DRY=${3:-}
case "$EJ"   in ingles|verbs) ;; *) echo "uso: cierre.sh <ingles|verbs> <examen|refuerzo> [--dry-run]" >&2; exit 2;; esac
case "$TIPO" in examen|refuerzo) ;; *) echo "uso: cierre.sh <ingles|verbs> <examen|refuerzo> [--dry-run]" >&2; exit 2;; esac

if [ "$EJ" = "ingles" ]; then
  ARCHIVO=estructuras/progreso-estructuras.md; CLAVE="Estructura"; VISTAS="Veces vista"
  UMBRAL_OK=3          # ✅ exige haber llegado al PENÚLTIMO peldaño (índice 3);
                       # el último es el de mantenimiento, donde ya viven las ✅
else
  ARCHIVO=verbos/progreso-verbos.md;           CLAVE="Verbo";      VISTAS="Vistas"
  UMBRAL_OK=4          # ✅ exige además un acierto en N4 → sólo se llega al ÚLTIMO
                       # peldaño (índice 4) pasando por él
fi

HOY=$(date +%F)
NOTAS=$(mktemp); TMP=$(mktemp); trap 'rm -f "$NOTAS" "$TMP"' EXIT
grep -vE '^\s*(#|$)' > "$NOTAS" || true
[ -s "$NOTAS" ] || { echo "sin notas en stdin — nada que hacer" >&2; exit 2; }

gawk -F'|' -v archivo="$ARCHIVO" -v clave="$CLAVE" -v vistas="$VISTAS" \
     -v hoy="$HOY" -v tipo="$TIPO" -v umbral="$UMBRAL_OK" -v ej="$EJ" '
function trim(s) { gsub(/^[ \t]+|[ \t]+$/,"",s); return s }
function norm(x,   u) {
  u = toupper(x)
  if (u=="STAR" || x=="🌟") return "STAR"
  if (u=="OK"   || x=="✅") return "OK"
  if (u=="REG"  || x=="⚠️" || x=="⚠") return "REG"
  if (u=="FAIL" || x=="❌") return "FAIL"
  return ""
}
function dia(f)  { return mktime(gensub(/-/," ","g",f) " 12 0 0") }
function masdias(f,n) { return strftime("%Y-%m-%d", dia(f) + n*86400) }
function pon(campo,val) { $campo = " " val " " }

# La escala vive AQUÍ y en ningún otro sitio del script: el peldaño se deduce
# de ella con peldano(), no a mano. Cambiar la escala = cambiar esta línea.
BEGIN { OFS="|"; NESC = split("1 2 4 8 10", ESC, " ") }

# Peldaño (índice 0-based) al que corresponde un intervalo de iv días.
# Redondea SIEMPRE HACIA ABAJO: un hueco fuera de escala (fila editada a mano,
# escala cambiada sin migrar) no puede regalar peldaño. Antes redondeaba hacia
# arriba y un hueco de 5 días se leía como el peldaño de 8 — promoción gratis.
function peldano(iv,   i,p) {
  p = 0
  for (i=1; i<=NESC; i++) if (ESC[i] <= iv) p = i-1
  return p
}
function en_escala(iv,   i) {
  for (i=1; i<=NESC; i++) if (ESC[i] == iv) return 1
  return 0
}

# ── 1er fichero: las notas ──────────────────────────────────────────────────
FNR==NR {
  linea=$0; sub(/^[ \t]+/,"",linea)
  campo=linea; sub(/[ \t].*$/,"",campo)
  nom=linea;  sub(/^[^ \t]+[ \t]+/,"",nom); nom=trim(nom)
  # «nombre ~ salida fácil» → la parte de detrás del ~ es diagnóstico, no nota
  if (index(nom,"~")) {
    esq = trim(substr(nom, index(nom,"~")+1))
    nom = trim(substr(nom, 1, index(nom,"~")-1))
    # un «|» partiría la fila en dos columnas y rompería la tabla entera
    if (index(esq,"|")) {
      printf "  ✗ %-30s la salida fácil no puede llevar «|» (rompe la tabla): «%s»\n", nom, esq > "/dev/stderr"
      errores++; next
    }
    ESQ[nom] = (esq=="" ? "—" : esq)      # «~» a secas limpia la columna
  }
  # «NOTA» o «NOTA/NOTA-DE-HOY» (la 2ª sólo la usa el refuerzo, ver cabecera)
  nota=campo; prev=""
  if (index(campo,"/")) {
    nota = substr(campo, 1, index(campo,"/")-1)
    prev = substr(campo, index(campo,"/")+1)
  }
  n = norm(nota)
  if (n=="") { printf "  ✗ nota desconocida: «%s» (usa STAR/OK/REG/FAIL)\n", nota > "/dev/stderr"; errores++; next }
  if (prev!="") {
    pn = norm(prev)
    if (pn=="") { printf "  ✗ nota de examen desconocida: «%s» en «%s»\n", prev, nom > "/dev/stderr"; errores++; next }
    PREV[nom]=pn
  }
  if (nom in NOTA) {                       # §8: una entrada, la PEOR nota
    peor = (NOTA[nom]=="FAIL" || n=="FAIL") ? "FAIL" :
           (NOTA[nom]=="REG"  || n=="REG")  ? "REG"  :
           (NOTA[nom]=="OK"   || n=="OK")   ? "OK"   : "STAR"
    printf "  · %-30s aparece 2 veces (%s y %s) → cuenta la peor: %s (§8)\n",
           nom, NOTA[nom], n, peor > "/dev/stderr"
    NOTA[nom]=peor
  } else { NOTA[nom]=n; ORDEN[++nitems]=nom }
  next
}

# ── 2º fichero: el progreso ─────────────────────────────────────────────────
/^\|/ && !COLS_OK {                      # ¿es la cabecera? mapea nombre → índice
  for (i=2; i<NF; i++) { h=trim($i); if (h!="") IDX[h]=i }
  if ((clave in IDX) && (vistas in IDX) && ("Próxima revisión" in IDX)) {
    COLS_OK=1
    cK=IDX[clave]; cV=IDX[vistas]; cB=IDX["Bien"]; cR=IDX["Regular"]
    cM=IDX["Mal"]; cE=IDX["Estado"]; cU=IDX["Últ."]; cP=IDX["Próxima revisión"]
    if (ej=="verbs") cN=IDX["Nivel"]
    cS = ("Nativas" in IDX) ? IDX["Nativas"] : 0      # subconjunto de Bien
    diag = (ej=="ingles") ? "Esquiva" : "Sustituto"
    cX = (diag in IDX) ? IDX[diag] : 0
  }
  print; next
}

COLS_OK && /^\|/ && trim($cV) ~ /^[0-9]+$/ {
  nom = trim($cK)
  if (!(nom in NOTA)) { print; next }
  if (nom in VISTO) {          # la misma clave en dos filas = doble contabilidad
    printf "  ✗ %-30s aparece en DOS filas del progreso — una nota estaría contando dos veces\n", nom > "/dev/stderr"
    errores++; print; next
  }
  VISTO[nom]=1
  # Diagnóstico: se escribe pase lo que pase con la nota (también en refuerzo).
  if (nom in ESQ) {
    if (!cX) { printf "  ✗ %-30s me pasas una salida fácil pero no existe la columna «%s»\n", nom, diag > "/dev/stderr"; errores++ }
    else { pon(cX, ESQ[nom]); printf "  · %-30s salida fácil → «%s»\n", nom, ESQ[nom] > "/dev/stderr" }
  }
  nota=NOTA[nom]
  v=trim($cV)+0; b=trim($cB)+0; r=trim($cR)+0; m=trim($cM)+0
  st = cS ? trim($cS)+0 : 0
  est=trim($cE); ult=trim($cU); prox=trim($cP)
  antes = sprintf("v=%d b=%d%s r=%d m=%d %s prox=%s", v,b,(cS&&st?sprintf("(%d🌟)",st):""),r,m,est,prox)

  # índice del escalón actual = (Próxima − Últ.) mapeado a la escala
  if (ult ~ /^[0-9]{4}-/ && prox ~ /^[0-9]{4}-/) {
    iv = int((dia(prox)-dia(ult))/86400)
    idx = peldano(iv)
    if (!en_escala(iv))
      printf "  ⚠ %-30s hueco de %d días, que NO es un peldaño de la escala — leo el de abajo (%d días). Revisa la fila\n",
             nom, iv, ESC[idx+1] > "/dev/stderr"
  } else idx = 0

  if (tipo=="examen") {
    # §9: la 1ª sesión del día es el examen; las demás son refuerzos. Si esta
    # fila ya se cerró hoy, la detección falló y estaríamos contando dos veces
    # el mismo día (y pudiendo promocionar a ✅ con dos aciertos de hoy, §5).
    if (ult == hoy) {
      printf "  ✗ %-30s ya se cerró HOY como examen — ¿no era refuerzo? (§9)\n", nom > "/dev/stderr"
      errores++; print; next
    }
    v++
    # 🌟 y ✅ son el MISMO movimiento de intervalo: un peldaño. El 🌟 solo deja
    # además su marca en `Nativas`.
    if (nota=="OK" || nota=="STAR") {
      b++; idx = (idx < NESC-1 ? idx+1 : NESC-1)
      if (nota=="STAR") { if (cS) st++; else printf "  ⚠ %-30s 🌟 sin columna «Nativas» en este progreso: se cuenta como ✅\n", nom > "/dev/stderr" }
    }
    if (nota=="REG")  { r++ }                                # repite intervalo
    if (nota=="FAIL") { m++; idx = 0 }                        # resetea a 1 día
    est = (nota=="FAIL") ? "🔴" : ((nota=="OK"||nota=="STAR") && b>=3 && idx>=umbral) ? "✅" : "🟡"
  } else {                                                    # refuerzo: sólo empeora
    if (nota!="FAIL") { printf "  · %-30s refuerzo, nota %s → no se toca (§9)\n", nom, nota > "/dev/stderr"; print; next }
    if (ult != hoy)   { printf "  ✗ %-30s refuerzo pero no entró en el examen de hoy — se ignora\n", nom > "/dev/stderr"; print; next }

    # El día pasa a ❌, así que hay que MOVER la nota de HOY a `Mal` — no
    # descontar la mejor que haya en la fila, que puede ser de otro día.
    hoyera = (nom in PREV) ? PREV[nom] : \
             (est ~ /🔴/) ? "FAIL" : \
             (est ~ /✅/) ? "OK"   : ""
    if (hoyera=="FAIL") {
      printf "  · %-30s el día ya cuenta ❌ desde el examen → no se toca\n", nom > "/dev/stderr"; print; next }
    if (hoyera=="") {
      printf "  ✗ %-30s 🟡 ambiguo: no sé si hoy sacó ✅ o ⚠️. Pásalo como FAIL/OK o FAIL/REG\n", nom > "/dev/stderr"
      errores++; print; next }
    if (hoyera=="STAR" && st<1) {
      printf "  ✗ %-30s dices que hoy sacó 🌟 pero Nativas=0 — fila incoherente\n", nom > "/dev/stderr"
      errores++; print; next }
    if (hoyera=="OK"  && b<1) {
      printf "  ✗ %-30s dices que hoy sacó ✅ pero Bien=0 — fila incoherente\n", nom > "/dev/stderr"
      errores++; print; next }
    if (hoyera=="REG" && r<1) {
      printf "  ✗ %-30s dices que hoy sacó ⚠️ pero Regular=0 — fila incoherente\n", nom > "/dev/stderr"
      errores++; print; next }
    if (hoyera=="REG") r--
    else { b--; if (hoyera=="STAR" && st>0) st-- }
    # `Nativas` nunca puede pasar de `Bien`: si el día ❌ se llevó por delante el
    # único acierto, se lleva también el 🌟 aunque no supiéramos que lo era.
    if (st > b) st = b
    m++; idx = 0; est = "🔴"
  }

  ult = hoy; prox = masdias(hoy, ESC[idx+1])
  pon(cV,v); pon(cB,b); pon(cR,r); pon(cM,m); pon(cE,est); pon(cU,ult); pon(cP,prox)
  if (cS) pon(cS, st)
  if (ej=="verbs") pon(cN, "N" (idx<=2 ? idx+1 : 4))
  printf "  %-30s %s\n      → %s\n", nom, antes, sprintf("v=%d b=%d%s r=%d m=%d %s prox=%s (%d días)", v,b,(cS&&st?sprintf("(%d🌟)",st):""),r,m,est,prox,ESC[idx+1]) > "/dev/stderr"
  print; next
}

{ print }

END {
  if (!COLS_OK) { print "  ✗ no encuentro la cabecera de la tabla en " archivo > "/dev/stderr"; exit 1 }
  for (i=1;i<=nitems;i++) if (!(ORDEN[i] in VISTO)) {
    printf "  ✗ NO ESTÁ EN EL PROGRESO: «%s» — ¿mal escrito?\n", ORDEN[i] > "/dev/stderr"; errores++
  }
  if (errores) exit 1
}
' "$NOTAS" "$ARCHIVO" > "$TMP"

if [ "$DRY" = "--dry-run" ]; then
  echo; echo "  (--dry-run: no se ha escrito nada)"
  exit 0
fi

cp "$ARCHIVO" "$ARCHIVO.bak"
mv "$TMP" "$ARCHIVO"; trap 'rm -f "$NOTAS"' EXIT

# ── invariante: Bien + Regular + Mal = Vistas ───────────────────────────────
gawk -v clave="$CLAVE" -v vistas="$VISTAS" '
function trim(s){gsub(/^[ \t]+|[ \t]+$/,"",s);return s}
BEGIN { head=1 }
!/^[ \t]*\|/ { ok=0; head=1; next }          # fuera de tabla: se olvida la cabecera
head { head=0; delete I                       # 1a linea de CADA tabla = su cabecera
  for(i=2;i<NF;i++){h=trim($i); if(h!="") I[h]=i}
  if((clave in I)&&(vistas in I)){ok=1;cK=I[clave];cV=I[vistas];cB=I["Bien"];cR=I["Regular"];cM=I["Mal"];cS=("Nativas" in I)?I["Nativas"]:0}
  next }                                      # si no son sus columnas (metricas), ok=0 y no se valida
ok && /^\|/ && trim($cV) ~ /^[0-9]+$/ { t++
  if (trim($cB)+trim($cR)+trim($cM) != trim($cV)) { b++; printf "  ⚠ DESCUADRE: %s\n", trim($cK) }
  if (cS && trim($cS)+0 > trim($cB)+0) { b++; printf "  ⚠ MÁS 🌟 QUE ACIERTOS: %s\n", trim($cK) } }
END { printf "\n  invariante: %d filas · %d descuadradas\n", t, b+0; if (b) exit 1 }
' FS='|' "$ARCHIVO"
