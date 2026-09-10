# Lógica — Verb Sprint

Coges 15 verbos del banco y por cada uno lanzas un estímulo; Jorge escribe la
frase en inglés. **Mitad `ES`** (frase en español, la traduce) y **mitad `SIT`**
(situación en inglés, la deduce). 3 tandas de 5.

Solo escribe en `verbos/`: `banco-verbos.md` · `progreso-verbos.md` ·
`log-verbos.md`. Única lectura fuera: la ingesta (§8), con `grep`.

> Los rótulos §1-§11 se citan desde `drill/`, `estructuras/` y `panel/`. **No
> renumerar.**

---

## 1. Qué mide

Que salga **el verbo exacto** y no una perífrasis. Si en su lugar sale un rodeo
—`I don't have money for that` por `I can't afford it`— es **❌ aunque el inglés
sea impecable**. Es la única regla contraintuitiva del ejercicio y la que lo
hace útil.

## 2. Nada de huecos

Ni el verbo objetivo, ni frases con hueco (`I ___ some money`): con eso el verbo
sale solo y sería reconocimiento, no recuperación. **Tampoco anuncies de qué van
los verbos de hoy** — nada de «hoy tocan verbos de dinero».

## 3. Los dos estímulos (50/50)

```
ES   "Le pedí prestados veinte euros a mi hermano hasta fin de mes."
     → I borrowed twenty euros from my brother until the end of the month.

SIT  "Your brother has money. You need some for a week. Say what you did."
     → I borrowed some money from my brother for a week.
```

**El `ES` es una traducción, no un acertijo.** Español natural, de su registro,
que **significa exactamente lo que significa la respuesta**. Si el español
nombra el verbo —«me quejé», «pedí prestado»— perfecto: eso no es una pista. La
única pista prohibida es la del §2, el verbo **en inglés**. Traducir «me quejé»
sigue exigiendo sacar `complain`, en pasado y con `to` detrás.

Lo que **no** vale es lo contrario: un enunciado que dice otra cosa para no
«regalar» el verbo —«hablé al soporte» esperando `complain`— está roto. Su
traducción fiel es `I talked to support`, inglés correcto, y marcarla como rodeo
le penaliza por acertar. **Tradúcete tu enunciado antes de lanzarlo:** si la
traducción literal no es la respuesta esperada, reescríbelo.

**El `SIT` es la otra mitad, y ahí sí deduce:** cero español, nada que traducir.
**Cierra en una sola acción sensata** (2026-08-20) — «say what you'll do to get
her home», no «tell her what you'll do». Acotar la situación es legítimo; acotar
el léxico, no.

## 4. Formato

**Un estímulo cada vez**, numerado. Jorge lo contesta, se corrige entero (§5) y
**sale el siguiente sin esperar a que lo pida**. De cinco en cinco se perdía en
la corrección y las peculiaridades de cada frase pasaban de largo (2026-09-04).

Lo que hacía el lote —**que no rumie**— lo hace ahora el ritmo: el estímulo
siguiente va pegado a la corrección, sin pausa ni pregunta.

**La tanda de 5 sigue existiendo** como unidad de cuenta: la barra (§5) y el
interleaving (§9) van por tanda, no por ítem. 3 tandas, 15 ítems; puede cortar
en 2 o pedir una 4ª.

**La marca `?`** al final de una frase = le costó encontrar el verbo → **⚠️
aunque sea correcto**. La pone él; no se deduce ni se estima.

## 5. Corrección

**Un ítem por bloque de código**, desarrollado entero, **también los aciertos**.

```
1  ✅  borrow  ·  REGULAR  (borrow / borrowed / borrowed)

      ✗  i borrowed 20 euros from matework until tomorrow
      ✓  I borrowed twenty euros from a workmate until tomorrow.
      ~  ai BO-roud TUEN-ti IU-rous from-a UERK-meit an-TIL tuMO-rou

      ES  Cogí veinte euros de un compañero hasta mañana.

      ✔ bien:  borrow sth FROM sb — la preposición correcta
      ✘ mal:   "matework" → workmate (orden del compuesto invertido)
      + workmate = compañero de curro · coworker (US) · colleague (formal)

      ⚙ pasado simple aunque el préstamo siga vivo: lo que se cerró es el
        momento de cogerlo, y "until tomorrow" ya carga el hasta-cuándo.
        "I have borrowed" ahí suena a aviso, no a lo que hiciste.
```

Y **solo al cerrar la tanda**, tras el 5º ítem:

```
   ▰▰▰▱▱▱▱▱▱▱  33%  ·  MAL 🔴
```

`✗` **siempre**, su frase literal, aunque el verbo esté bien: sin ella no ve de
dónde sale el arreglo. `✘ mal` solo si falló; el resto siempre. `~`: MAYÚSCULAS
= tónica, `guion` = enlazado. `+` da uso y matiz, **nunca una regla que no salga
de su frase**. **`✔ bien` siempre**: sin él un ⚠️ y un ❌ se leen igual de mal, y
no lo son.

**`⚙` una sola cosa**, la de más rendimiento: la mecánica de la frase que **no
es el verbo** —qué tiempo y por qué ese, o la pieza que la sostiene—, con sus
palabras y la versión rota al lado para que se vea el contraste. `+` es léxico;
`⚙` es por qué funciona. Si no aporta nada, **se omite**: no se rellena.

❌ no salió el verbo (otro, **rodeo**, o en blanco) · ⚠️ correcto mal montado, o
con `?` · ✅ correcto y natural · 🌟 nativo.

Barra **una vez por tanda**, tras el 5º ítem: `🌟`3 · `✅`2 · `⚠️`1 · `❌`0 sobre
`3 × 5`. Con algún ❌ el techo es `BIEN 🟢`; `PERFECTA 🏆` exige cero ❌ y cero
⚠️. **No entra en el progreso.**

## 6. Niveles

El nivel lo fija el **peldaño SRS del verbo**, no el capricho:

| | Peldaño | Estímulo |
|---|---|---|
| **N1** | ⚪ · 🔴 · 0 | frase corta, presente o pasado simple |
| **N2** | 1 | + complemento de tiempo, lugar o motivo |
| **N3** | 2 | + contraste o subordinada (`but`, `although`, `because`) |
| **N4** | 3-4 | hipótesis, matiz o tiempo compuesto |

**N4 es la bisagra con `/ingles`:** un verbo no llega a ✅ sin haber acertado ahí.

## 7. Estado y SRS

⚪ nueva · 🔴 falló el último intento · 🟡 tiene aciertos, no fijado · ✅ sale solo
y también en N4.

| Nota | Columna | Intervalo | Nivel |
|---|---|---|---|
| 🌟 | `Bien` + `Nativas` | +1 peldaño | sube |
| ✅ | `Bien` | +1 peldaño | sube |
| ⚠️ | `Regular` | repite | repite |
| ❌ | `Mal` | 1 día, 🔴 | cae a N1 |

`Regular` no se suma a `Mal`: un ⚠️ es *sabía el verbo y lo montó mal*, y sin
contador propio el caso «nunca acierta la preposición» es invisible. Invariante:
`Bien + Regular + Mal = Vistas`.

**Nada de esto se aplica a mano** — lo calcula `panel/cierre.sh`. La columna
`Sustituto` guarda el rodeo literal (`afford → "I don't have money for"`): es el
diagnóstico del ejercicio.

## 8. Cierre e ingesta

**TOP 5 Weak Verbs:** los 5 peores, ordenados `❌ con rodeo` → `❌` → `⚠️ con ?`
→ `⚠️`, con su versión nativa. **La sesión no se corta a los 5 fallos**, termina
por volumen.

**Ingesta** cada 5 sesiones o con `sync`, en **solo lectura y con `grep`**:
GAPs 🔴/🟡 de `talk/progreso-talk.md`, y correcciones de
`estructuras/log-estructuras.md` y `talk/log-talk.md` donde lo que cambia entre
`✗` y `✓` es **el verbo**. Entran como ⚪ con su categoría, su trampa y 2-3
frases modelo del contexto real de Jorge. **Nunca se escribe fuera de `verbos/`.**

## 9. La ronda

15 ítems, leyendo `progreso-verbos.md` entero: primero **vencidos** (revisión ≤
hoy), 🔴 antes que 🟡 — si hay 15 o más, solo repaso; rellenar con **máx. 3-4
nuevos ⚪**; y **un ✅ de control** cada 3-4 sesiones, sin avisar.

**Interleaving obligatorio:** cada tanda mezcla `CONF`/`PER`/`PHR`/`OPI` y mezcla
`ES` con `SIT`. Cinco de la misma categoría dan falsa sensación de dominio.
**Un verbo, una vez por sesión.** Del banco, **solo las 15 filas** con `grep`.

## 10. Números fijos

15 ítems · 3 tandas de 5 · máx. 3-4 nuevos · intervalos
1 → 2 → 4 → 8 → 10 · N1→N4 · ✅ = 3 aciertos en 3 días distintos + último
peldaño + un acierto en N4.

## 11. Examen y refuerzo

La **primera sesión del día es examen** (mide, entra en métricas, sea la hora
que sea); las siguientes, **refuerzos** (entrenan, no entran en métricas). Se
detecta por la fecha de la última cabecera de `log-verbos.md`.

El refuerzo repasa **los mismos 15 verbos del examen de hoy** —fallos y
aciertos— con **estímulos distintos** y **el mismo nivel N** (no se baja a N1).

**El veredicto lo fija la primera exposición y solo puede empeorar.** *Fallo →
acierto* en el mismo día es recencia, no memoria; *acierto → fallo* no tiene
explicación benigna. Repasar puede bajar la nota del día: se acepta.

Cada sesión escribe. Cabecera del refuerzo:
`## AAAA-MM-DD — sesión N · REFUERZO (2º pase del día)`. **La tabla de métricas
solo recibe filas de examen.**
