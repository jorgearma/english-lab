# Plan — Remodelación completa de `/chain`

> **Para el agente que ejecuta esto:** llegas sin el contexto de la conversación
> donde se decidió. Este documento es autónomo: contiene el porqué, el diseño y
> las tareas concretas. Léelo entero antes de tocar nada. **No inventes reglas
> nuevas fuera de lo que aquí se especifica.** Ante cualquier duda de diseño,
> pregunta a Jorge; ante cualquier duda de implementación del SRS, la fuente de
> verdad es `verbos/logica-verbos.md` + `panel/cierre.sh`.

---

## 0. Qué se pide, en una frase

Sustituir por completo el ejercicio actual de `/chain` (encadenar ideas sin
parar) por un ejercicio **nuevo**: fijación y selección de **conectores por
registro**, con **repetición espaciada** (la misma maquinaria de `/verbs`).
El nombre del comando `/chain` se mantiene; el contenido cambia entero.

---

## 1. Por qué (diagnóstico que justifica el cambio)

El chain actual entrena *no pararse* al encadenar. Pero el problema real de
Jorge con los conectores no es ese. Es doble:

1. **Recuperación por función fallida.** Cuando se le pide "+RAZÓN" en abstracto,
   no le viene ningún conector — no porque no los sepa, sino porque los tiene
   indexados en español (`ya que → since`), no bajo una etiqueta de función. La
   función es una categoría de análisis, no una ruta de producción real: nadie
   habla eligiendo "una conjunción causal".
2. **El conector no es un verbo.** Un verbo es denotación cerrada (`run =
   correr`, una respuesta y ya). Un conector es **pragmática abierta**: la
   relación "resultado" tiene 8+ realizaciones y casi todas son "correctas". El
   problema no es el significado (lo sabe), es el **registro/naturalidad**:
   puede meter `as a result` en "no tengo dinero, como resultado no voy" y está
   *bien, se entiende*, pero suena a informe. No hay un "mal" que marcar; hay un
   **natural** y un **válido-pero-antinatural**.

Conclusión de diseño: hay que entrenar **seleccionar el conector natural para
cada situación/registro** y que **salga solo**, no memorizar significados. Y eso
solo se entrena con **contexto**, no con etiquetas de función ni con pares de
diccionario.

El banco de conectores actual (`chain/eslabones.md`) **cubre bien las 9
funciones** (razón, contraste, resultado, reflexión, ejemplo, adición,
condición, tiempo, cierre) con rampa B1→B2→C1. La cobertura no es el problema;
lo que falta es la capa de **registro** y un mecanismo que fuerce a fijar los
conectores **eclipsados** por las muletas.

---

## 2. Diseño del ejercicio nuevo

### 2.1 Qué mide

Que salga **el conector natural para el registro de la situación**, y que salga
**sin pista**. El significado no se evalúa (ya lo tiene). Se evalúa **selección +
registro + montaje**.

### 2.2 Unidad de SRS

**El conector EN su nicho de registro**, no el conector pelado. `given that` es
natural en registro formal, no en el bar → si un conector tiene dos nichos, son
**dos ítems** con su propio estado SRS.

### 2.3 Los dos tipos de ítem

Mismo espíritu que el 50/50 `ES`/`SIT` de verbs (`verbos/logica-verbos.md` §3):

- **B — carga (con pista).** Se da una **frase en español entera**, escrita *en
  su registro*, con el conector dentro. Jorge **traduce la frase completa**. No
  puede esquivar el conector (para traducir la frase tiene que producirlo) y de
  paso arrastra todo el contorno (tiempos, gerundio/infinitivo, preposiciones).

  ```
  ES  Dado que el sistema lleva caído desde ayer, hemos parado los envíos.
      → Given that the system has been down since yesterday, we've stopped the deliveries.
  ```

- **A — test (sin pista).** Se da una **situación en inglés** (`SIT`, cero
  español), con el **registro marcado por el contexto**. Jorge **elige** el
  conector natural. Aquí se mide de verdad.

  ```
  SIT  Formal apology email to a client. Their order is late because a truck
       broke down. Explain why.
      → The truck broke down, so your order is delayed.
        (formal sube a: As a result of a breakdown, your order has been delayed.)
  ```

### 2.4 El ciclo SRS: B y A son dos momentos del MISMO ítem

No son dos tipos de tarjeta separados: son **la misma tarjeta madurando**. El
**peldaño SRS decide el formato**:

```
⚪ nuevo        → aparece en B (carga con pista)
🟡 cargado      → tras el intervalo, cae en A (test sin pista)
                   ├─ sale el natural solo         → ✅ sube, intervalo largo
                   └─ muleta / registro que no pega → repite / baja
✅ vivo         → sigue cayendo en A a intervalos largos, para no perderlo
```

El **intervalo entre B y A es lo que hace honesto el test**: cargar hoy en B y
testear en A *el mismo día* no prueba memoria (recencia); testear tras el
intervalo sí. Esto es el efecto de espaciado y es el corazón del ejercicio.

Ventaja: **la proporción B:A se autorregula por el SRS** — al principio dominan
los ítems jóvenes (B), con el tiempo dominan los maduros (A). No se gestiona a
mano. La pista se retira sola dentro del propio espaciado.

### 2.5 Niveles (mapear el eje B→A al escalón de dificultad)

Como `/verbs` §6, el nivel lo fija el peldaño SRS, no el capricho. Propuesta de
mapeo (a validar con Jorge):

| | Peldaño | Formato y exigencia |
|---|---|---|
| **N1** | ⚪ · 🔴 · 0 | **B**, frase corta, un solo registro claro |
| **N2** | 1 | **B**, frase con contorno (tiempo compuesto, gerundio, prep) |
| **N3** | 2 | **A**, situación simple, registro evidente |
| **N4** | 3-4 | **A**, situación de registro exigente o cruzado (elegir bien o suena mal) |

**El "sin pista" (A) entra por el ascenso de nivel, no por un candado.** Cuanto
más sale un conector, más sube su N, y al subir pasa solo de B a A. A diferencia
de verbs (vocabulario infinito, que blinda el ✅ con el gate de N4), aquí la lista
de conectores es **finita y corta**: con un par de semanas del ejercicio el
volumen de repetición la fija, así que **no se exige un acierto en A como
requisito duro para ✅**. El objetivo "que salga sin pista" queda igualmente
garantizado, porque A es el nivel alto por el que todo ítem acaba pasando.

### 2.6 Notas (el conector es el foco; el contorno solo roza)

Espeja `verbos/logica-verbos.md` §5 y §7:

- **❌ FAIL** — no salió el conector objetivo: sacó **la muleta**, o un
  **registro que no pega**, o en blanco. Es el gemelo exacto del *rodeo* de
  verbs: **gramaticalmente puede ser impecable y aun así es ❌**, porque falla el
  objetivo del ejercicio (el registro). En A, elegir el registro equivocado =
  FAIL.
- **⚠️ REG** — el conector correcto y natural, pero **mal montado** (contorno:
  tiempo, gerundio, preposición) o forzado / con `?`.
- **✅ OK** — correcto y natural.
- **🌟 STAR** — nativo.

El **registro-equivocado es el "rodeo" de este ejercicio**: se anota el conector
que sacó como diagnóstico (columna `Sustituto`/`Esquiva`), igual que verbs anota
la perífrasis.

### 2.7 Feedback (bloque idéntico al de verbs §5)

Un ítem por bloque de código, también los aciertos:

```
1  ⚠️  given that  ·  RAZÓN · formal · C1              [B · traduce entera]

      ES  Dado que el sistema lleva caído desde ayer, hemos parado los envíos.

      ✗  given that the system is down since yesterday we stopped the deliveries
      ✓  Given that the system has been down since yesterday, we've stopped the deliveries.
      ~  GIV-en dhat dha SIS-tem haz-BIN DAUN sins YES-ter-dei, uiv STOPD dha di-LIV-ris

      ✔ bien:  sacaste "given that", no lo esquivaste con "because"
      ⚙ el fallo no es el conector, es el tiempo: since + present perfect
        (has been), no presente — "is down since yesterday" mezcla el ahora con
        un desde-cuándo, y eso pide el perfect.
```

Reglas del bloque (heredadas de verbs, **no negociar sin Jorge**):

- **`✓` = su frase con el arreglo mínimo**, no una reescritura entera.
  Reescribirle todo le hace leer "lo dije todo mal". Lo que ya está bien **no se
  toca** (en el ejemplo, `stopped`, `deliveries` se quedan). Si la versión
  nativa plena difiere mucho del registro, va **aparte**, entre paréntesis o en
  el `+`, no pisando el `✓`.
- **`✔ bien` siempre** — sin él un ⚠️ y un ❌ se leen igual de mal. En cada ❌
  hay que decir **si su frase se salva como inglés** (p. ej. "como inglés está
  correcta; falla el registro, que es lo que medimos").
- **`⚙` una sola cosa**, la de más rendimiento del contorno, con su porqué. Si
  no aporta, se omite; **no se rellena**.
- `~`: MAYÚSCULAS = tónica, guion = enlazado; convenciones en la tabla de
  `verbos/logica-verbos.md` §5 / `chain/logica-chain.md` (duplicar la tabla para
  mantener la carpeta autónoma).

### 2.8 examen / refuerzo

Igual que verbs §11: la **primera sesión del día es examen** (mide, entra en
métricas); las siguientes son **refuerzo** (mismos ítems, estímulos distintos,
mismo nivel N, no bajan a N1; no entran en métricas). El veredicto lo fija la
primera exposición y solo puede empeorar.

### 2.9 Qué desaparece del chain viejo

- **Encadenar cadenas de 5-6 eslabones, modo escalera/libre, cronómetro,
  fluidez, dos capas de puntuación.** Todo fuera.
- **Muletas bloqueadas** (`🔁`). Ya no hacen falta: el problema del eclipse lo
  ataca el **FAIL en A** (sacar la muleta cuando tocaba otro registro penaliza)
  + la priorización natural del SRS hacia los débiles.

---

## 3. Ficheros — crear / reescribir / ajustar

### 3.1 `chain/logica-chain.md` — reescribir entero

Documento maestro del ejercicio nuevo. **Espeja la estructura de
`verbos/logica-verbos.md`** con secciones numeradas y citables (`§1` qué mide,
`§2` los dos tipos de ítem, `§3` ciclo SRS B→A, `§4` niveles, `§5` corrección,
`§6` estado y SRS, `§7` la ronda, `§8` cierre e ingesta, `§9` examen/refuerzo,
`§10` números fijos). **Corto** — solo lo que rompería solo y la interfaz con el
script. Mantener la nota de aislamiento (este ejercicio no lee ni escribe fuera
de `chain/`, salvo la ingesta en solo lectura).

### 3.2 `.claude/commands/chain.md` — reescribir

Tomar `.claude/commands/verbs.md` como plantilla (arranque examen/refuerzo →
sesión un ítem cada vez, corregido y el siguiente pegado sin esperar →
cierre con script). `allowed-tools` debe incluir
`Bash(bash panel/cierre.sh:*)`. Cambiar toda la mecánica de cadenas por la de
ítems B/A.

### 3.3 Banco — `chain/eslabones.md` → convertir a banco de nichos

Mantener los **IDs actuales** (`RAZ-01`…: los referencia `panel/estado.sh` y el
progreso). Añadir las columnas que el ejercicio nuevo necesita:

| Columna | Para qué |
|---|---|
| ID | clave estable (no cambiar) |
| Conector | el conector en inglés |
| Fn | función (RAZ/CTR/…) — informativo, ya **no** es la pista |
| Registro | `formal` · `neutro` · `coloquial` (la capa que hoy falta) |
| Disparador ES | frase/expresión española **del registro de Jorge** para el ítem B |
| Situación (SIT) | semilla del contexto en inglés para el ítem A |
| Nivel | B1/B2/C1 |

**Trabajo de contenido crítico y grande:** afinar `Registro` y `Disparador ES`
uno a uno. El disparador ES **no es la traducción de diccionario** — debe ser lo
que Jorge diría de verdad. Ejemplo del porqué: `so basically` está hoy etiquetado
`o sea, que`, pero "o sea que" en español arrastra consecuencia; el disparador
correcto es **"vamos, que… / total, que… / resumiendo"**. Una etiqueta perezosa
fija el conector con el matiz equivocado. **No se siembran los ~84 de golpe**: se
incorporan **de los más usados (frecuentes) a los menos usados** (decisión de
Jorge), creciendo poco a poco. La *incorporación* al ejercicio va por frecuencia
de uso; dentro de cada sesión, el orden de presentación es aleatorio/interleaved.

Si se prefiere no romper el nombre histórico, se puede renombrar a
`chain/banco-chain.md` para alinear con `verbos/banco-verbos.md`; en tal caso
actualizar todas las referencias.

### 3.4 `chain/progreso-chain.md` — reemplazar por progreso SRS

Espejar `verbos/progreso-verbos.md`. Cabecera de la **tabla 1** (el script
resuelve columnas **por nombre de cabecera**, así que respetar los nombres que
`cierre.sh` espera: `Vistas`, `Bien`, `Regular`, `Mal`, `Nivel`, `Estado`,
`Últ.`, `Próxima revisión`, `Sustituto`, `Nativas`):

```
| ID | Conector | Fn | Registro | Vistas | Bien | Regular | Mal | Nivel | Estado | Últ. | Próxima revisión | Sustituto | Nativas |
```

- `ID` en la **primera columna** (campo `$2` tras el pipe inicial) para que
  `panel/estado.sh:116` siga contando ítems con su regex `^ *[A-Z]{3}-[0-9]`.
- Mantener una **tabla 2 de métricas por sesión** con una columna `Fecha`
  (la leen `fila_metrica`/`conta_metrica` de `estado.sh`). Columnas sugeridas:
  `Fecha | Sesión | Ítems | % natural (A) | % B2+ | Nota media`.
- El histórico actual de uso/variedad **se pierde** (2 sesiones). Aceptado: es
  una remodelación completa.

### 3.5 `chain/log-chain.md` — formato nuevo

Log de sesiones con los bloques de corrección (como `verbos/log-verbos.md`).
Reemplaza el formato de cadenas.

### 3.6 `panel/cierre.sh` — añadir rama `chain`

Hoy solo acepta `ingles|verbs` (ver el `case "$EJ"`). Añadir `chain`:

- En el `case "$EJ"`: aceptar `chain`.
- En el `if/else` que fija `ARCHIVO/CLAVE/VISTAS/UMBRAL_OK`, añadir la rama:
  - `ARCHIVO=chain/progreso-chain.md`
  - `CLAVE="ID"`  → **la clave del ítem es el ID** (`RAZ-05`), no el conector:
    es único (un conector con dos nichos son dos IDs) y estable. El coach pasa
    `OK RAZ-05` en el heredoc.
  - `VISTAS="Vistas"`
  - `UMBRAL_OK` → el peldaño mínimo para ✅. **Decisión de Jorge: no se blinda con
    el gate estricto de verbs** (la lista es finita, se memoriza en un par de
    semanas). Umbral **moderado** (p. ej. 2) en vez de 4; el ítem llega a A por el
    ascenso de nivel, no por candado. El número exacto se **calibra tras las
    primeras semanas** (igual que se hizo con la escala).
  - Columna de diagnóstico: reutilizar el mecanismo `~` del script; la columna
    se llama `Sustituto` (ya contemplada por nombre de cabecera).
- La escala (`1 2 4 8 10`) y la máquina de estados **no se tocan**: son
  compartidas. (Coherente con que Jorge dejó esa escala fija hasta tener más
  datos.)
- Actualizar la cabecera-comentario del script para documentar la 3ª rama.
- Probar con `--dry-run` antes de escribir de verdad.

### 3.7 `panel/estado.sh` (`/hoy`) — ajustar afirmaciones ya falsas

Con el chain nuevo:

- Líneas ~57 y ~77 dicen *"chain y talk no puntúan ítems / no vencen"*. Para
  chain **ya no es cierto**: ahora puntúa ítems, vence por fecha y distingue
  examen/refuerzo (como verbs). Reescribir esas líneas dejando solo a `talk`.
- Verificar `fila_metrica`/`conta_metrica` contra la nueva tabla 2.
- Verificar el conteo de ítems (línea ~116) con los IDs conservados.
- Alinear el bloque de "vencidos/próxima revisión" para que chain aparezca junto
  a ingles/verbs, no en el grupo de "no vencen".

---

## 4. Dependencias externas a revisar (no romper)

`grep` confirma que referencian chain, además de panel:

- **`drill/logica-drill.md`** — si `/drill` ingiere fallos de chain, la fuente
  cambia de forma (antes uso/variedad, ahora FAIL/REG con `Sustituto`).
  Revisar y adaptar la ingesta. (Memoria del proyecto: la cola de `/drill` venía
  "contaminada" por el estímulo viejo — aprovechar para dejarla limpia.)
- **`talk/logica-talk.md`, `talk/progreso-talk.md`, `.claude/commands/talk.md`**
  — menciones a chain. Talk es el destino de transferencia (donde los conectores
  deben salir solos); verificar que las menciones siguen teniendo sentido y que
  la ingesta cruzada talk↔chain no asume el formato viejo.
- **`panel/logica-panel.md`, `panel/bitacora.md`,
  `estructuras/logica-estructuras.md`** — menciones descriptivas; actualizar la
  descripción de qué es `/chain`.

---

## 5. Decisiones cerradas por Jorge

1. **Nombre.** Se mantiene `chain` (comando **y** título). No se retitula.
2. **`✅` no se blinda con un acierto en A.** La lista de conectores es finita y
   fácil de memorizar; con un par de semanas del ejercicio el volumen la fija.
   `UMBRAL_OK` moderado, no el gate estricto de verbs (§3.6). A entra por el
   ascenso de nivel, no como candado.
3. **N sube con los aciertos.** Cuanto más va saliendo un conector, más sube su
   N, y al subir pasa de B (con pista) a A (sin pista). El mapeo N1-N4 de §2.5
   queda confirmado.
4. **Orden de incorporación: de los más usados a los menos usados.** El banco
   crece por frecuencia de uso real; dentro de la sesión, presentación
   aleatoria/interleaved.

---

## 6. Orden de ejecución sugerido

1. Decisiones de §5 ya cerradas por Jorge — no re-preguntar salvo bloqueo real.
2. Reescribir `chain/logica-chain.md` (el diseño manda sobre todo lo demás).
3. Convertir el banco (§3.3) con un subconjunto sembrado.
4. Crear `chain/progreso-chain.md` vacío con las cabeceras correctas + esos ítems.
5. Añadir la rama `chain` a `panel/cierre.sh` y probar en `--dry-run`.
6. Reescribir `.claude/commands/chain.md`.
7. Ajustar `panel/estado.sh` y revisar `drill`/`talk`.
8. Correr una sesión de prueba de punta a punta (arranque → 2-3 ítems B y A →
   cierre con script en dry-run → verificar que el progreso se recalcula bien).

---

## 7. Invariantes que NO se pueden romper

- **No leer ni escribir fuera de `chain/`** durante una sesión, salvo la ingesta
  en solo lectura y `panel/cierre.sh` para el cierre.
- **El SRS lo calcula el script, nunca a mano.** El modelo puntúa (OK/REG/FAIL/
  STAR), el script reescribe el progreso.
- **Feedback = bloque de verbs** (`✗ ✓ ~ · ✔ ✘ · + · ⚙`). `✓` es el **arreglo
  mínimo** sobre su frase, no una reescritura; la nativa plena va aparte.
- **No marcar mal lo que está bien.** En cada ❌/⚠️ decir si su frase se salva
  como inglés. El ❌ del registro no significa "hablas mal", significa "no diste
  con el registro que este ejercicio mide".
- **Un solo `⚙`** por ítem, la de más rendimiento; si no aporta, se omite.
- **Disparadores ES en el registro real de Jorge**, no de diccionario.
- **Ficheros de método cortos.** No añadir reglas nuevas fuera de este plan; los
  fallos se arreglan con ejemplos concretos, no con más reglas.
- **La escala SRS `1 2 4 8 10` no se toca** (Jorge la dejó fija hasta tener más
  sesiones).
