# Lógica — Chain (conectores por registro)

Coges 8 conectores del progreso; cada uno es **un conector en su nicho de
registro** (`formal` · `neutro` · `coloquial`). Van en **4 frases de 2
conectores**: el coach da la frase española entera y Jorge la traduce, con los
dos conectores dentro (§7). **Por ahora todo es formato `B`** (traducir); el
formato `A` —elegir el conector ante una situación en inglés, sin español—
queda **pospuesto** (§2). Cada conector da su propia nota al SRS.

Solo escribe en `chain/`: `banco-chain.md` · `progreso-chain.md` ·
`log-chain.md`. Única lectura fuera: la ingesta (§8), con `grep`. El cierre lo
calcula `panel/cierre.sh chain`.

> Los rótulos §1-§10 se citan desde `.claude/commands/chain.md` y `panel/`.
> **No renumerar.**

---

## 1. Qué mide

Que salga **el conector natural para el registro de la situación**, y que salga
**sin pista**. El significado no se evalúa: ya lo tiene. Se evalúa **selección +
registro + montaje**.

Un conector es pragmática abierta: «resultado» tiene ocho realizaciones y casi
todas son correctas. No hay un *mal* que marcar; hay un **natural** y un
**válido-pero-antinatural**. `As a result I'm not going` en el bar se entiende,
y suena a informe. Por eso **la muleta o el registro que no pega es ❌ aunque el
inglés sea impecable**. Es el gemelo del rodeo de `/verbs` y la única regla
contraintuitiva del ejercicio.

## 2. Los dos tipos de ítem

> **Estado actual (decisión de Jorge, 2026-09-11):** por ahora **todo corre en
> `B`** — el coach da la frase española entera y Jorge la traduce. **`A` queda
> pospuesto** para implementar en el futuro. Mientras tanto, el peldaño SRS sube
> igual (§6) pero el **formato no cambia**: N1-N4 son frases `B` de contorno
> creciente (§4). Cuando `A` entre, madurará por ascenso como aquí se describe.

```
B   ES   «Dado que el sistema lleva caído desde ayer, hemos parado los envíos.»
         → Given that the system has been down since yesterday, we've stopped the deliveries.

A   SIT  Formal apology email to a client. Their order is late because a truck
         broke down. Explain why.
         → As a result of a breakdown, your order has been delayed.
           (coloquial bajaría a: The truck broke down, so your order's late.)
```

**`B` — carga, con pista.** Una frase en español **entera**, escrita **en su
registro**, con el conector dentro. Para traducirla tiene que producirlo, y de
paso arrastra el contorno (tiempos, gerundio/infinitivo, preposiciones). **Es
una traducción, no un acertijo**: el español tiene que significar exactamente
lo que significa la respuesta. Que nombre el conector («dado que», «lo que pasa
es que») **no es pista** — la única prohibida es el conector **en inglés**. El
disparador español sale de la columna `Disparador ES` del banco, que está en
el registro real de Jorge, no en el de diccionario. **Tradúcete tu enunciado
antes de lanzarlo**: si la traducción literal no es la respuesta esperada, está
roto.

**`A` — test, sin pista.** Una situación **en inglés**, cero español, con el
**registro marcado por el contexto** (a quién, dónde, por qué canal). Jorge
**elige** el conector. **Cierra en una sola salida sensata**: acotar la
situación es legítimo; acotar el léxico, no. Aquí se mide de verdad.

**Nada de huecos ni de funciones.** Ni `I ___ some money`, ni «+RAZÓN», ni
«hoy tocan conectores de contraste». Con eso el conector sale solo y sería
reconocimiento, no recuperación.

## 3. El ciclo: B y A son el mismo ítem madurando

No son dos tarjetas: es **la misma tarjeta**, y el peldaño decide el formato.

```
⚪ nuevo     → B (carga con pista)
🟡 cargado   → tras el intervalo, cae en A (test sin pista)
                 ├─ sale el natural solo          → ✅ sube, intervalo largo
                 └─ muleta / registro que no pega → ❌ cae, vuelve a B
✅ vivo      → sigue cayendo en A a intervalos largos
```

**El intervalo entre B y A es lo que hace honesto el test.** Cargar hoy en B y
testear hoy en A es recencia; testear tras el intervalo es memoria. La
proporción B:A **se autorregula**: al principio dominan los jóvenes (B), con el
tiempo los maduros (A). No se gestiona a mano.

## 4. Niveles

El nivel lo fija el **peldaño SRS del ítem**, no el capricho:

| | Peldaño | Exigencia (todo en `B` por ahora) |
|---|---|---|
| **N1** | ⚪ · 🔴 · 0 | frase corta, un solo registro claro |
| **N2** | 1 | frase con contorno (tiempo compuesto, gerundio, preposición) |
| **N3** | 2 | registro más exigente, frase más larga |
| **N4** | 3-4 | registro cruzado o contorno denso (elegir/montar bien o suena mal) |

Mientras `A` esté pospuesto (§2), el nivel es **dificultad del contorno de la
frase `B`**, como en `/verbs`. La lista es finita y corta: el volumen la fija,
así que ✅ no exige un acierto en el nivel alto como en `/verbs` (§10).

## 5. Corrección

**Un ítem por bloque de código**, desarrollado entero, **también los aciertos**.

```
1  ⚠️  given that  ·  RAZ · formal · C1              [B · traduce entera]

      ES  Dado que el sistema lleva caído desde ayer, hemos parado los envíos.

      ✗  given that the system is down since yesterday we stopped the deliveries
      ✓  Given that the system has been down since yesterday, we've stopped the deliveries.
      ~  GIV-en dhat dha SIS-tem haz-BIN DAUN sins YES-ter-dei, uiv STOPD dha di-LIV-ris

      ✔ bien:  sacaste "given that", no lo esquivaste con "because"
      ⚙ el fallo no es el conector, es el tiempo: since + present perfect
        (has been). "is down since yesterday" mezcla el ahora con un
        desde-cuándo, y eso pide el perfect.
```

Y **al final de la sesión**, tras las 4 frases:

```
   ▰▰▰▱▱▱▱▱▱▱  33%  ·  MAL 🔴
```

- **`✗` siempre**, su frase literal, aunque esté bien: sin ella no ve de dónde
  sale el arreglo.
- **`✓` = su frase con el arreglo mínimo.** Lo que ya está bien **no se toca**
  (`stopped`, `deliveries` se quedan). Reescribirle todo le hace leer «lo dije
  todo mal». Si la nativa plena difiere mucho, va **aparte**, entre paréntesis
  o en el `+`, nunca pisando el `✓`.
- **`✔ bien` siempre**: sin él un ⚠️ y un ❌ se leen igual de mal. En cada ❌ hay
  que decir **si su frase se salva como inglés** («como inglés está bien; falla
  el registro, que es lo que medimos»).
- `✘ mal` solo si falló. `+` da uso y matiz, nunca una regla que no salga de su
  frase.
- **`⚙` una sola cosa**, la de más rendimiento del contorno (el tiempo, la
  preposición, el gerundio) con su porqué y la versión rota al lado. Si no
  aporta, **se omite**: no se rellena.
- **La marca `?`** al final de su frase = le costó → **⚠️ aunque sea correcto**.
  La pone él; no se deduce.

❌ no salió el conector objetivo: **muleta**, **registro que no pega**, o en
blanco · ⚠️ el conector correcto y natural, **mal montado** (contorno) o con
`?` · ✅ correcto y natural · 🌟 nativo.

Barra **una vez, al final**: `🌟` · `✅` · `⚠️` · `❌` sobre `8`. Con algún ❌ el
techo es `BIEN 🟢`; `PERFECTA 🏆` exige cero ❌ y cero ⚠️. **No entra en el
progreso.**

### La línea `~`

Muleta, no fonética: ritmo, sílaba tónica y enlazado.

| Escribo | Suena | Ojo |
|---|---|---|
| `MAYÚSCULAS` | sílaba tónica | el inglés come las átonas, márcalas siempre |
| `guion-entre-palabras` | enlazado | `ended up` → `ENDID-AP`, no dos palabras |
| `dh` | *the*, *bothered* | como la d de "na**d**a", suave |
| `th` | *think* | igual que la z de "**z**apato" |
| `z` | *was*, *easy* | **s zumbada**, NUNCA la z de "zapato" |
| `sh` | *shift* | no existe en español, boca adelantada |
| `j` | *changed*, *just* | como la "ll" rioplatense, no la j de "jamón" |
| `h` | *have*, *who* | aire, j muy suave |
| `v` | *move*, *very* | labio contra dientes, no b |
| `r` | *turned* | r inglesa, jamás vibrada |
| vocal doble (`ii`, `uu`) | vocal larga | *move* → `MUUV` |

Transcribe lo que se oye, no letra a letra: `watching a film` es `WOCHIN-a
FILM`. *(Tabla idéntica a `verbos/logica-verbos.md` §5, duplicada a propósito
para que `chain/` sea autónomo; si se cambia una, cambiar la otra.)*

## 6. Estado y SRS

⚪ nuevo · 🔴 falló el último intento · 🟡 tiene aciertos, no fijado · ✅ sale
solo, también en A.

| Nota | Columna | Intervalo | Nivel |
|---|---|---|---|
| 🌟 | `Bien` + `Nativas` | +1 peldaño | sube |
| ✅ | `Bien` | +1 peldaño | sube |
| ⚠️ | `Regular` | repite | repite |
| ❌ | `Mal` | 1 día, 🔴 | cae a N1 (vuelve a B) |

Invariante: `Bien + Regular + Mal = Vistas`. **Nada de esto se aplica a mano** —
lo calcula `panel/cierre.sh chain`. La clave del ítem es el **`ID`** (`RAZ-05`),
no el conector: es único y estable. La columna `Sustituto` guarda **lo que sacó
en su lugar** (`as a result → "so"` · `given that → "because"`): es el
diagnóstico del ejercicio, el equivalente de la perífrasis en `/verbs`.

## 7. La ronda

**8 conectores por sesión, en 4 frases de 2 conectores cada una.** Cada frase
`B` embebe **dos** conectores y Jorge la traduce entera; cada uno da su propia
nota al SRS (§6). Esto va más rápido que 8 prompts sueltos y entrena la
**producción encadenada**, que es el destino de transferencia a `/talk`.

Reglas de emparejamiento (las resuelve el coach al armar la ronda):
- **Funciones distintas** en cada frase (RAZ+CTR, RES+REF…), nunca dos del mismo
  tipo → encadenado real.
- **Un solo registro por frase:** los dos conectores comparten el tono (natural;
  una frase no cambia de registro a media).
- Si un conector no tiene pareja disponible, se empareja con otro del mismo
  formato aunque no toque por vencimiento, o esa frase lleva **1**.

Leyendo `progreso-chain.md` entero: primero **vencidos** (revisión ≤ hoy), 🔴
antes que 🟡; rellenar con **máx. 2-3 nuevos ⚪**; y **un ✅ de control** cada 3-4
sesiones, sin avisar. Orden **aleatorio**. **Un ítem, una vez por sesión.** Del
banco, **solo las filas de la ronda** con `grep`.

Temas de su vida: la pareja (habla solo inglés), el reparto en bici, la
seguridad / los VPS, política y actualidad.

## 8. Cierre e ingesta

**TOP 5 Weak Connectors:** los 5 peores, ordenados `❌ con sustituto` → `❌` →
`⚠️ con ?` → `⚠️`, con su versión nativa. **La sesión no se corta a los 5
fallos**, termina por volumen.

**Incorporación:** el progreso crece **de los más usados a los menos usados**
(decide Jorge). Incorporar = mover la fila de «Pendientes» a «Incorporados» en
el banco con `Registro`, `Disparador ES` y `SIT` afinados, y añadirla al
progreso como ⚪. Un conector con dos nichos son **dos filas** con dos IDs.

**Ingesta** cada 5 sesiones o con `sync`, en **solo lectura y con `grep`**:
correcciones de `talk/log-talk.md` y `estructuras/log-estructuras.md` donde lo
que cambia entre `✗` y `✓` es **un conector**. Si está en «Pendientes», es
candidato a incorporar antes que los demás; si no está, se añade a
«Pendientes». **Nunca se escribe fuera de `chain/`.**

## 9. Examen y refuerzo

La **primera sesión del día es examen** (mide, entra en métricas, sea la hora
que sea); las siguientes, **refuerzos** (entrenan, no entran en métricas). Se
detecta por la fecha de la última cabecera de `log-chain.md`.

El refuerzo repasa **los mismos 15 ítems del examen de hoy** —fallos y
aciertos— con **estímulos distintos** y **el mismo nivel N** (no se baja a N1;
un A sigue siendo A).

**El veredicto lo fija la primera exposición y solo puede empeorar.** *Fallo →
acierto* en el mismo día es recencia; *acierto → fallo* no tiene explicación
benigna. Cabecera del refuerzo: `## AAAA-MM-DD — sesión N · REFUERZO (2º pase
del día)`. **La tabla de métricas solo recibe filas de examen.**

## 10. Números fijos

8 conectores · 4 frases de 2 · máx. 2-3 nuevos · intervalos 1 → 2 → 4 → 8 → 10 ·
**todo formato B** (A pospuesto, §2) · ✅ = 3 aciertos + peldaño ≥ 2
(`UMBRAL_OK=2` en `cierre.sh`, **a calibrar tras las primeras semanas**; la
escala no se toca). Barra una vez, al final.
