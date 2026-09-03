# Lógica del ejercicio — Idea Chain

Documento maestro del **segundo ejercicio**. Explica qué entrena, cómo se lanza,
cómo se puntúa y cómo se actualizan los archivos de esta carpeta.

**Este ejercicio es autónomo.** No lee ni escribe nada fuera de `chain/`. El
sistema de la carpeta `estructuras/` (`estructuras/logica-estructuras.md`, `estructuras/banco-estructuras.md`, `estructuras/progreso-estructuras.md`,
`estructuras/log-estructuras.md`) no se toca nunca desde aquí, y este no se toca desde allí.

Archivos de datos de este ejercicio:
- `eslabones.md` — banco de conectores, agrupados por **función** y por nivel.
- `progreso-chain.md` — estado de cada eslabón + curva de métricas por sesión.
- `log-chain.md` — registro crudo de cadenas.

---

## 1. Qué entrena esto y por qué es distinto a `/ingles`

|  | Structure Loop (`/ingles`) | Idea Chain (`/chain`) |
|---|---|---|
| Unidad medida | la estructura | el **eslabón** (una idea nueva enganchada a la anterior) |
| Input | frase ES a traducir | una idea inicial que hay que **hacer crecer** |
| Enemigo | calcar del español | **pararse**: cerrar la frase, quedarse en `because / but / so` |
| Qué mide la nota | precisión | **fluidez**: cuánto encadena y con qué variedad |

**El gap concreto que ataca.** Jorge tiene fluidez social alta pero produce las
ideas de una en una, con costuras. Un nativo mete tres o cuatro en la misma
frase sin pensarlo. Chain entrena exactamente esa articulación, y solo esa.

**Regla de oro del alumno, literal:**

> No pauses. No pienses demasiado. Solo añade otra idea. Aunque no sea perfecto.

**La consecuencia de diseño más importante de esa regla:** si se corrige la
gramática *mientras* encadena, el alumno aprende a frenar para no equivocarse —
justo lo contrario del objetivo. Por eso el inglés se corrige **después y sin
penalizar** (§4). Es deliberado, no un olvido.

**Qué NO es:** no es traducción, no es precisión gramatical, no es vocabulario.
Una cadena con errores pero de 6 eslabones vale más que una cadena perfecta de 2.

---

## 2. El patrón

```
idea → razón → contraste → resultado → reflexión → ejemplo
```

Ese es el patrón canónico, pero **no es obligatorio ni fijo**: es un ejemplo de
recorrido. Lo que se exige es encadenar funciones distintas, en el orden que
salga. Las funciones disponibles están en `eslabones.md`:

`RAZ` razón · `CTR` contraste · `RES` resultado · `REF` reflexión/matiz ·
`EJE` ejemplo · `ADI` adición · `CND` condición · `TMP` tiempo/secuencia ·
`CIE` cierre

**Qué cuenta como eslabón válido:**
1. Va introducido por un conector (o bisagra) explícito, y
2. Aporta **idea nueva** — no reformula la anterior.

`and then I did the same thing again` no es un eslabón: es la misma idea con
otras palabras. `so I just wear better clothes` sí lo es.

**Objetivo por cadena: 5-6 eslabones, mínimo 4 funciones distintas, sin repetir
conector dentro de la misma cadena.**

---

## 3. Mecánica de la sesión

**4 cadenas por sesión, 15-20 min.** Modo **mixto progresivo**:

### Cadenas 1-2 — modo ESCALERA

El coach da la idea inicial y pide un eslabón cada vez, **declarando la
función** pero nunca el conector.

```
coach:  Idea de arranque → "I work as a bike courier."
coach:  +RAZÓN
alumno: reescribe LA FRASE ENTERA, ya con la razón
coach:  +CONTRASTE
alumno: reescribe LA FRASE ENTERA otra vez
coach:  +RESULTADO
...
```

**El alumno reescribe la frase completa en cada paso, no solo el trozo nuevo.**
Esa repetición acumulativa es lo que fija el patrón: al sexto paso ha dicho la
primera mitad seis veces y le sale sola.

### Cadenas 3-4 — modo LIBRE

El coach lanza solo un **tema** y el alumno suelta la cadena entera de un tirón,
sin parar. Aquí es donde se mide de verdad.

A partir de la cadena 3 se puede añadir una **restricción** (§6) para forzar
salir de las muletas.

### Reglas de la sesión

- El coach **declara la función**, jamás el conector. Decir "ahora un contraste"
  es la consigna; decir "usa *that said*" es regalar el ejercicio.
- Si el alumno se atasca en **léxico** (una palabra de contexto que no sabe), se
  le regala: no es lo que se evalúa. El conector, nunca.
- Tras corregir una cadena, **el coach para**. La siguiente no sale hasta que el
  alumno escriba `siguiente` (o "sigue", "otra", "vamos").
- Entre medias puede preguntar lo que quiera: dudas, alternativas, más ejemplos
  de un conector. Eso es gratis, **no avanza la sesión y no cambia la nota** ya
  puesta.
- Temas anclados a su vida: **la pareja (habla solo inglés), el reparto,
  política / actualidad / OSINT**.

### Cronómetro

Se mide con `date +%s`, **dos llamadas por cadena**:
- **Modo libre:** marca al lanzar el tema, marca al recibir la cadena.
- **Modo escalera:** marca al pedir el primer eslabón, marca al recibir el último.

Se registran los **segundos totales** y los **segundos por eslabón**.

**No penaliza.** Es un dato de tendencia, y además sucio: incluye lo que tarda
en teclear. Solo sirve para compararse consigo mismo entre sesiones — nunca
contra un umbral absoluto.

Referencia orientativa (solo para el comentario final, no para la nota): en modo
libre, 6 eslabones por debajo de ~90 s es ritmo de conversación real.

---

## 4. Corrección en dos capas

Esta separación es el corazón del ejercicio. **La capa 1 puntúa. La capa 2 no.**

### Capa 1 — FLUIDEZ (puntúa)

Se calcula sobre 100:

| Componente | Puntos | Cómo se calcula |
|---|---|---|
| **Eslabones** | 40 | `8 × min(nº eslabones, 5)` |
| **Variedad** | 30 | `30 × min(funciones distintas, 4) / 4` |
| **Nivel** | 20 | `20 × (eslabones con conector B2+ / total eslabones)` |
| **Continuidad** | 10 | 10 sin rendirse · 5 si dudó pero siguió · 0 si se rindió o pidió la respuesta |

**Penalizaciones** (restan del total):
- **−5** por cada conector repetido dentro de la misma cadena.
- **−10** por cada eslabón **desconectado**: idea nueva pegada sin bisagra, o
  punto y aparte que rompe la cadena en frases sueltas.

Resultado final acotado a 0-100.

**Topes, para que la nota no mienta:**
- Con **menos de 5 eslabones**, el techo es `BIEN 🟢` (74%).
- Si **se rindió**, el techo es `REGULAR 🟠` (59%).
- `PERFECTA 🏆` exige **≥6 eslabones, ≥5 funciones distintas, 0 repetidos, 0
  desconectados y ≥80% de conectores B2+**. Es rara a propósito.

Escala y barra (idénticas a las del otro ejercicio, para que la señal se lea
igual):

| % | Nivel | Barra |
|---|---|---|
| 0-19 | MUY MAL 💀 | `▰▱▱▱▱▱▱▱▱▱` |
| 20-39 | MAL 🔴 | `▰▰▰▱▱▱▱▱▱▱` |
| 40-59 | REGULAR 🟠 | `▰▰▰▰▰▱▱▱▱▱` |
| 60-74 | BIEN 🟢 | `▰▰▰▰▰▰▰▱▱▱` |
| 75-89 | MUY BIEN 🔥 | `▰▰▰▰▰▰▰▰▱▱` |
| 90-100 | PERFECTA 🏆 | `▰▰▰▰▰▰▰▰▰▰` |

### Capa 2 — INGLÉS (corrige, NO puntúa)

Debajo de la nota, la versión nativa. **Nada de esto baja la nota de la cadena.**
Se dice explícito cada vez: *"esto no puntúa"*.

Formato del bloque de corrección — todo **dentro de un bloque de código**, que
es lo único que alinea las dos versiones en la misma columna:

```
✗  <el trozo del alumno, literal, con sus typos>
✓  <el mismo trozo en nativo>
~  <ese trozo, pronunciado con sonidos españoles>
```

- Prefijos de **un solo carácter** `✗` `✓` `~`, dos espacios detrás. Nada de
  `Tú:` / `Nativo:`: desplazan la segunda línea y matan la comparación.
- Las tres líneas **pegadas**, sin nada intercalado.
- **Se corrigen las bisagras y el trozo que las rodea, no la cadena entera.** En
  una cadena de 50 palabras, transcribir todo cada vez es ruido: se pierde
  dónde estaba el fallo. Diferencia deliberada con `/ingles`, donde la frase es
  corta y sí va entera.
- **Una vez por sesión**, al cerrar, sí va la mejor cadena **completa** en
  versión nativa, con su `~` entera, para leerla en voz alta.
- Máximo dos líneas de explicación por corrección. Inglés natural, no gramática
  de manual.

### La línea `~`: pronunciación con sonidos españoles

Muleta, no fonética. Sirve para **ritmo, sílaba tónica y enlazado** — que es
donde se le nota el acento — no para clavar cada vocal.

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

Regla de oro: **no transcribas letra a letra, transcribe lo que se oye**.
`watching a film` es `WOCHIN-a FILM`, no `uatching a film`.

*(Esta tabla es idéntica a la de `estructuras/logica-estructuras.md` §3 del otro ejercicio. Está
duplicada a propósito para que `chain/` sea autónomo — si se cambia una,
cambiar la otra.)*

---

## 5. Ejemplo trabajado de puntuación

Cadena del alumno (modo libre, 74 s):

> *I like working as a bike courier because I can organize my own schedule, even
> though sometimes the weather is terrible, so I just wear better clothes and
> keep working. To be honest, freedom is more important to me than comfort. For
> example, if I don't feel like working one day, I can stay home.*

Desglose:

| # | Eslabón | Conector | Función | Nivel |
|---|---|---|---|---|
| 1 | I can organize my own schedule | `because` | RAZ | B1 |
| 2 | sometimes the weather is terrible | `even though` | CTR | B2 |
| 3 | I just wear better clothes | `so` | RES | B1 |
| 4 | freedom is more important than comfort | `to be honest` | REF | B2 |
| 5 | if I don't feel like working one day… | `for example` | EJE | B2 |

- Eslabones: 5 → `8 × 5` = **40**
- Variedad: 5 funciones distintas, tope 4 → **30**
- Nivel: 3 de 5 son B2+ → `20 × 3/5` = **12**
- Continuidad: no se rindió → **10**
- Penalizaciones: 0 repetidos, 0 desconectados → **0**

**Total: 92** → pero `PERFECTA 🏆` exige ≥6 eslabones y ≥80% B2+, y no los tiene.
Baja al tramo siguiente: **89% · MUY BIEN 🔥**.

Lectura para el alumno: la cadena está bien montada; lo que la frena es que tres
bisagras de cinco son de nivel B1. Ahí es donde toca subir.

---

## 6. Restricciones y muletas

El riesgo real de este ejercicio es estancarse: encadenar seis ideas siempre con
`because / but / so / and`. Dos mecanismos lo impiden.

### Muletas bloqueadas (automático)

Un conector usado en **3 o más cadenas dentro de las últimas 2 sesiones** pasa a
estado `🔁 muleta` en `progreso-chain.md` y queda **prohibido durante la
siguiente sesión entera**. Al cumplirse la sesión de bloqueo vuelve a `✅`.

Se le anuncia al empezar: *"hoy no puedes usar `because` ni `so`"*. Esto es lo
que fuerza buscar `since`, `given that`, `which means`, `that's why`.

### Restricciones de cadena (manual, a partir de la 3)

Una sola por cadena, elegida según lo que se vea flojo:
- **Sin muletas:** prohibidos `because`, `but`, `so`.
- **Cierre obligatorio:** la cadena tiene que acabar en REF + EJE.
- **Dos de nivel C1:** al menos dos conectores C1 en la cadena.
- **Función prohibida:** no se puede usar CTR (o la que más repita), para que
  busque otro camino.
- **Arranque en frío:** el tema es de política / OSINT, terreno abstracto.

---

## 7. Estado y progreso

`progreso-chain.md` tiene **dos tablas**, y ninguna es un SRS de precisión como
el del otro ejercicio: aquí se mide **uso y variedad**.

### Tabla 1 — eslabones

Estados:

| Estado | Significado |
|---|---|
| ⚪ sin usar | nunca ha salido en una cadena |
| 🟡 tanteando | usado 1-2 veces, o forzado / torpe |
| ✅ vivo | sale solo y bien colocado |
| 🔁 muleta | sobreusado — bloqueado la próxima sesión (§6) |

Se actualiza al cerrar: `Veces usado` +1, `Última vez` = hoy, y el estado según
lo anterior. **Un conector que el coach tuvo que regalar no sube a ✅**: se
queda 🟡, porque vino de la pista y no de la memoria.

### Tabla 2 — métricas por sesión

Una fila por sesión: media de eslabones, funciones distintas, % de conectores
B2+, segundos medios por cadena y nota media. **Es la curva de progreso real**
del ejercicio: lo que hay que ver subir es eslabones, %B2+ y funciones, y bajar
los segundos.

---

## 8. Cierre de sesión (obligatorio)

Se escribe a disco **una sola vez, aquí**. Si el alumno dice "cierra" a mitad,
se ejecuta con lo hecho hasta ese punto.

1. **Evaluación breve**: fluidez (¿encadenó o cerró frases?), variedad (¿salió
   de las muletas?), velocidad (comparada con sus propias sesiones anteriores),
   y qué eslabón nuevo ha entrado de verdad.
2. **La mejor cadena de la sesión, entera, en versión nativa**, con su línea `~`
   completa, para leerla en voz alta.
3. **Actualizar `progreso-chain.md`**: tabla 1 (eslabones tocados) y una fila
   nueva en la tabla 2. Recalcular muletas bloqueadas para la próxima sesión.
4. **Añadir la sesión a `log-chain.md`** con el formato que ya tiene.
5. Usar la fecha real (`date +%F`).

---

## 9. Reglas para el coach (resumen operativo)

- Declarar la **función**, nunca el conector.
- Léxico de contexto sí se regala; bisagras jamás.
- En escalera, exigir la **frase entera reescrita** en cada paso.
- Una cadena cada vez; tras corregir, **parar** hasta `siguiente`.
- La nota mide **fluidez**, no gramática. Decirlo en voz alta cada vez.
- La corrección de inglés va **después**, señalada como "no puntúa".
- Corregir bisagras y su entorno, no la cadena entera. La cadena completa en
  nativo, una vez al cerrar.
- Cronometrar con `date +%s`: dos marcas por cadena.
- Respetar las muletas bloqueadas y anunciarlas al empezar.
- Nunca leer ni escribir fuera de `chain/`.
- Nunca volcar `eslabones.md` entero en contexto: solo `grep` de lo que hace falta.

**Números fijos:** 4 cadenas por sesión (2 escalera + 2 libres) · 5-6 eslabones
por cadena · mínimo 4 funciones distintas · máx. 2 conectores nuevos por sesión ·
muleta = 3 cadenas en las últimas 2 sesiones → bloqueada 1 sesión.
