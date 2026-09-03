# Lógica del ejercicio — Verb Sprint

Documento maestro del **cuarto ejercicio**. Explica qué entrena, cómo se lanza,
cómo se corrige, cómo se puntúa y cómo se actualizan los archivos de esta
carpeta.

**Este ejercicio es casi autónomo.** Solo **escribe** dentro de `verbos/`.
La única excepción a la regla de aislamiento de los otros ejercicios es la
**ingesta** (§8): puede *leer* con `grep` los fallos de `/talk` y `/ingles` para
alimentar su banco. Nunca los modifica.

Archivos de datos de este ejercicio:
- `banco-verbos.md` — 100 verbos semilla, con su trampa y sus frases modelo.
- `progreso-verbos.md` — estado, nivel y fecha de repaso de cada verbo.
- `log-verbos.md` — registro crudo de sesiones.

**Dos clases de sesión.** La primera del día es un **examen** (mide y mueve
el SRS); las siguientes del mismo día son **refuerzos** (entrenan y solo
pueden empeorar el veredicto). Se detecta solo, por fecha — ver §11.

---

## 1. Qué entrena esto y por qué es distinto a los otros tres

|  | `/ingles` | `/chain` | `/talk` | `/verbs` |
|---|---|---|---|---|
| Unidad medida | la estructura | el eslabón | la fidelidad al pensamiento | **el verbo** |
| Enemigo | calcar del español | pararse | autocensurarse | **el rodeo: decir la idea con tres palabras genéricas en vez de con el verbo exacto** |
| Ritmo | lento y profundo | medio | conversacional | **rápido, alto volumen** |
| Duración | 15-20 min | 15-20 min | 15-20 min | **~15 min** (era 5-8; ver §5) |

**El gap concreto que ataca.** Jorge no falla el verbo por no conocerlo: falla
porque no lo tiene **disponible a velocidad de conversación**, y entonces lo
esquiva. Dice `I don't have money for that` en vez de `I can't afford it`, o
`I asked my brother for money` en vez de `I borrowed money from my brother`.
La frase resultante no tiene errores — y por eso ningún otro ejercicio lo
detecta como fallo. Este sí.

**Qué NO es:** no es vocabulario, no es una lista de traducciones, y no es
gramática. Es **acceso léxico bajo presión de tiempo**.

**Marco de uso.** Nació como calentamiento de 5-8 min antes de `/ingles` o
`/talk`. Desde el 2026-08-20 la corrección va desarrollada (§5) y la sesión dura
~15 min: es una sesión por derecho propio. Sigue valiendo como arranque de un
bloque más largo, pero ya no es gratis en tiempo.

---

## 2. La regla que define el ejercicio: nada de huecos

**Jorge escribe la frase entera en inglés, desde cero.** Nunca se le da:

- el verbo objetivo (`Target: borrow` ← prohibido),
- una frase con hueco (`I ___ some money` ← prohibido),
- opciones entre las que elegir.

El motivo es el mismo principio que manda en `estructuras/logica-estructuras.md` §4.1: con hueco o con
target, el contexto acota tanto que el verbo sale casi solo — eso es
**reconocimiento**, y no mide nada. Sin nada delante, si sale `borrow` es que
estaba disponible; y si sale un rodeo, **ese rodeo es el dato**.

Corolario para el coach: **el verbo objetivo no se menciona hasta la
corrección.** Ni siquiera "hoy trabajamos verbos de dinero".

---

## 3. Los dos tipos de estímulo (mezcla ~50/50)

### `ES` — frase en español real

Español natural, del registro de Jorge, construido para que el verbo objetivo
sea la forma **normal** de decirlo en inglés — no la única posible.

```
ES   "Le pedí pasta a mi hermano para llegar a fin de mes."
     → I borrowed some money from my brother to get to the end of the month.
```

### `SIT` — situación descrita en inglés

Cero español. Es el que de verdad rompe el puente de traducción mental: no hay
nada que traducir.

```
SIT  "Your brother has money. You need some for a week. Say what you did."
     → I borrowed some money from my brother for a week.
```

**Mitad y mitad en cada sesión.** El `ES` mide si el verbo aparece cuando el
pensamiento arranca en español (que es lo que pasa en la vida real). El `SIT`
mide si aparece cuando no hay español de por medio. Los dos hacen falta.

**Prohibido en ambos:** meter en el estímulo una pista léxica del verbo. Si el
español dice "pedir prestado", ya has dado la respuesta. Se describe la
**situación**, no el verbo.

**El `SIT` tiene que cerrar en una sola acción sensata** (regla del 2026-08-20).
Un `SIT` que acaba en «tell her what you'll do» cuando la escena admite tres
respuestas distintas no mide acceso léxico: mide adivinación, y Jorge tiene
razón cuando protesta. La orden final acota la acción — «say what you'll do to
get her home» — **sin** por ello nombrar ni insinuar el verbo. Acotar la
situación es legítimo; acotar el léxico, no.

---

## 4. Formato de la sesión: 3 tandas de 5

El ejercicio **entrena velocidad de producción**. Una corrección después de
cada frase lo convertiría en `/ingles` en pequeño. Por eso:

```
coach lanza 5 estímulos numerados de golpe
     ↓
Jorge escribe las 5 frases seguidas, de un tirón
     ↓
coach corrige la tanda entera en un bloque
     ↓
siguiente tanda
```

**5 ítems de golpe no es un detalle de formato: es el cronómetro.** Al no poder
rumiar cada frase por separado, el ritmo se parece al de hablar. Escribir las 5
debería llevar **menos de 2 minutos**.

**La marca `?`.** Si a Jorge le ha costado encontrar el verbo, escribe `?` al
final de esa frase. Cuenta como **⚠️ aunque el verbo sea correcto**: un verbo
que necesita diez segundos no está disponible cuando su pareja le habla. Es un
autorreporte honesto, no un castigo — sin él, el sistema se cree que hay
automatismo donde solo hay recuerdo lento.

**Tandas por sesión: 3 (15 ítems).** Jorge puede cortar en 2 (10 ítems) si va
justo de tiempo, o pedir una cuarta. Nunca más de 4.

---

## 5. Corrección y puntuación

Una tanda se corrige entera, en **un solo bloque de código**. **Todos los ítems
van desarrollados, aciertos incluidos** (cambio del 2026-08-20, pedido por
Jorge: la corrección de una línea marcaba el fallo pero no le enseñaba nada).

```
1  ✅  borrow  ·  REGULAR  (borrow / borrowed / borrowed)
      ✗  i borrowed 20 euros from matework until tomorrow
      ✓  I borrowed twenty euros from a workmate until tomorrow.
      ES  Cogí veinte euros de un compañero hasta mañana.
      ~  ai BO-roud TUEN-ti IU-rous from-a UERK-meit an-TIL tuMO-rou
      ✔ bien:  borrow sth FROM sb — la preposición correcta
      ✘ mal:   "matework" → workmate (orden del compuesto invertido)
      + workmate = compañero de curro · coworker (US) · colleague (formal)

2  ❌  afford  ·  REGULAR  (afford / afforded / afforded)
      ✗  i can't lend that bike right now
      ✓  I can't afford that bike right now.
      ES  Esa bici se me va de precio ahora mismo.
      ~  ai KANT-aFOORD dhat BAIK rait-NAU
      ✔ bien:  can't + verbo, y el "right now" al final donde toca
      ✘ mal:   verbo equivocado — lend = prestar TÚ, no tiene que ver con precio
      + afford + sustantivo / afford + to + verbo. Casi siempre con can/can't

   ▰▰▰▱▱▱▱▱▱▱  33%  ·  MAL 🔴
```

**Los siete campos.** El icono y el verbo abren la línea; detrás, tras un `·`,
si el verbo es **REGULAR o IRREGULAR** con sus tres formas (es lo que más se
falla al montarlo). Luego:

| Campo | Qué lleva | Cuándo |
|---|---|---|
| `✗` | la frase de Jorge **literal**, con sus typos | si falló algo |
| `✓` | la versión nativa completa | siempre |
| `ES` | traducción al español de la versión nativa | siempre |
| `~` | pronunciación (convenciones de `estructuras/logica-estructuras.md` §3) | siempre |
| `✔ bien` | **qué parte de su frase estaba bien**, y por qué tiene mérito | siempre |
| `✘ mal` | cada error por separado, uno por línea | si falló algo |
| `+` | vocabulario y matiz de uso: 2-3 líneas, sin teoría gramatical | siempre |

**`✔ bien` no es relleno.** Con 6 ⚠️ en una sesión, decirle solo lo que falló
oculta que la estructura del verbo ya la tenía montada — que es justo la parte
cara. Sin ese campo, un ⚠️ y un ❌ se leen igual de mal, y no lo son.

**Coste asumido:** la sesión pasa de 5-8 min a ~15. Deja de ser calentamiento y
pasa a ser sesión completa. Se aceptó a cambio de que la corrección enseñe.

**Lo que NO cambia con esto:** el estímulo (§2) sigue sin target, sin hueco, sin
opciones y sin pista léxica. Todo lo ampliado va **después** de que Jorge haya
respondido; delante de él, nada.

| Icono | Significado |
|---|---|
| ❌ | no salió el verbo: usó otro, dio un rodeo, o se quedó en blanco |
| ⚠️ | verbo correcto pero mal montado (preposición, tiempo, colocación), **o marcado con `?`** |
| ✅ | verbo correcto y frase natural |
| 🌟 | verbo + frase que suena a nativo, con matiz y registro |

**El rodeo es ❌, no ✅.** Aunque la frase esté perfecta en inglés. Es la regla
más importante de la corrección y la que hace útil este ejercicio: `I asked my
brother for money` es inglés impecable y un fallo pleno de `borrow`.

**La línea `~`** usa las mismas convenciones que `estructuras/logica-estructuras.md` §3 (MAYÚSCULAS =
sílaba tónica, `guion` = enlazado, `dh` / `th` / `z` / `sh` / `j`…). Va solo en
los ítems que se corrigen desarrollados.

**Barra de recompensa** por tanda, misma escala que `estructuras/logica-estructuras.md` §3: `🌟`3 ·
`✅`2 · `⚠️`1 · `❌`0, sobre `3 × 5`. Topes: con algún ❌ el techo es `BIEN 🟢`;
`PERFECTA 🏆` exige cero ❌ y cero ⚠️. **No entra en `progreso-verbos.md`**: es
ánimo, no dato.

**Nada de teoría gramatical.** El campo `+` da uso y matiz («complain TO sb
ABOUT sth»), nunca nomenclatura («complemento de régimen preposicional»). Si
Jorge quiere profundizar, se le responde — y eso **no cambia la nota ya
puesta**.

---

## 6. Niveles: la dificultad va atada al verbo, no al ítem

Si el nivel sube al azar, se puede "dominar" `borrow` habiendo producido solo
`I borrowed money`. El nivel del estímulo lo fija el **escalón SRS del verbo**:

El nivel se lee del **peldaño**, no de un número de días: si mañana cambia la
escala (§7), esta tabla sigue valiendo sin tocarla.

| Nivel | Peldaño (§7) | Cómo es el estímulo |
|---|---|---|
| **N1** | ⚪ nueva · 🔴 · peldaño 0 | frase corta, presente o pasado simple, sin subordinadas |
| **N2** | peldaño 1 | + complemento de tiempo, lugar o motivo |
| **N3** | peldaño 2 | + contraste o subordinada (`but`, `although`, `because`) |
| **N4** | peldaños 3 y 4 (los dos últimos) | hipótesis, matiz o tiempo compuesto — el verbo dentro de una frase de nivel C1 |

```
N1   I borrowed some money.
N2   I borrowed some money from my brother last week.
N3   I borrowed some money from my brother, although I hate asking.
N4   I would have borrowed the money from my brother, but it turned out he was
     as broke as I was.
```

**N4 es la bisagra con `/ingles`:** ahí el verbo tiene que convivir con las
estructuras del banco de estructuras. Un verbo **no llega a ✅ interiorizado
sin haber pasado por N4**. Si no, el badge miente.

**N4 sigue siendo alcanzable**: se entra en él al llegar al peldaño 3 (4º
acierto seguido), y el ✅ exige el **último peldaño** — el 4 —, al que solo se
llega respondiendo un estímulo ya lanzado en N4. La escala nueva acorta los
días, no los peldaños, así que la ruta a N4 no cambia.

---

## 7. Máquina de estados

Mismos estados y mismos intervalos que el resto del sistema (`estructuras/logica-estructuras.md` §5) —
no se inventa una curva nueva:

```
1 día  →  2 días  →  4 días  →  8 días  →  10 días
```

| Estado | Significado |
|---|---|
| ⚪ nueva | nunca practicada |
| 🔴 fallando | falló en el último intento |
| 🟡 en progreso | tiene aciertos, no está fijado |
| ✅ interiorizado | sale solo, y sale también en N4 |

**Dónde suma cada nota.** La escala tiene **cuatro** notas (§5), así que
`progreso-verbos.md` tiene **tres** contadores. Cada nota suma en uno y solo uno:

| Nota | Columna | Intervalo | Nivel |
|---|---|---|---|
| 🌟 | `Bien` **y** `Nativas` | sube un escalón | sube |
| ✅ | `Bien` | sube un escalón | sube |
| ⚠️ | `Regular` | repite el actual | repite |
| ❌ | `Mal` | resetea a 1 día | cae a N1 |

**El 🌟 mueve el intervalo igual que el ✅: un escalón, nunca dos.** Lo único que
añade es su marca en `Nativas`, un subconjunto de `Bien` (`Nativas` ≤ `Bien`,
verificado en cada cierre) que registra **qué verbos le salen ya nativos** —
información que `Bien` no distingue. La usan el coach y el panel; el SRS no.
Misma regla que `estructuras/logica-estructuras.md` §5.

**Invariante que valida la tabla, comprobado en cada cierre:**

```
Bien + Regular + Mal  =  Vistas
```

**Por qué `Regular` no se suma a `Mal`.** Un ⚠️ aquí significa *sabía el verbo
pero lo montó mal* — es lo contrario del rodeo, y mezclarlo con ❌ borraría
justo la distinción que da sentido al ejercicio. Y acumular ⚠️ sin un solo ✅
tiene diagnóstico propio: **conoce el verbo y nunca acierta la preposición o la
colocación**. Sin contador propio ese caso es invisible, porque `Mal` se queda
en 0 para siempre. Es el mismo agujero que tenía `estructuras/` hasta el
2026-08-19 (`estructuras/logica-estructuras.md` §5).


### Quién calcula esto

**El modelo puntúa; `panel/cierre.sh` calcula.** Nada de esta sección se aplica
a mano: escalones, fechas, transiciones de estado y promoción a ✅ los ejecuta
el script, que es la implementación de referencia de estas reglas.

```bash
bash panel/cierre.sh <ingles|verbs> <examen|refuerzo> [--dry-run]
```

Recibe por stdin una línea por ítem (`OK` / `STAR` / `REG` / `FAIL` + nombre
literal), reescribe el progreso, imprime `antes → después` y verifica el
invariante. Deja un `.bak`. Si un nombre no existe, aborta sin escribir nada.

**El intervalo actual no se guarda: se deduce.** La columna **`Últ.`** (fecha
del último repaso) existe para eso — `intervalo = Próxima revisión − Últ.`, y de
ahí sale el escalón. Sin las dos fechas no se puede saber de qué escalón viene
una fila.

**Transiciones:**
- **✅ / 🌟** → sube **un** escalón, los dos el mismo. Y **sube de nivel de
  estímulo** (§6). `Bien` +1, y el 🌟 además `Nativas` +1.
- **⚠️** → repite intervalo y **repite nivel**. Se queda 🟡. Incluye el caso
  "acertó pero marcó `?`": velocidad insuficiente no es progreso. `Regular` +1.
- **❌** → resetea a 1 día, estado 🔴, **y baja a N1**. Venga del estado que
  venga. `Mal` +1.
- **Para pasar a ✅ interiorizado:** 3 aciertos en **3 días distintos** + haber
  llegado al **último peldaño de la escala** + **al menos un acierto en N4**.
  Va en peldaños y no en días a propósito: cambiar la escala no rompe la regla.
  (En `/ingles` el umbral es el **penúltimo** peldaño — aquí es uno más alto
  justo para garantizar ese acierto en N4.)
- Un ✅ que vuelve a fallar **baja de estado**. Sin protección al progreso ya
  conseguido.

**Varias sesiones el mismo día:** el veredicto lo fija la **primera** exposición
del día y durante el día **solo puede empeorar, nunca mejorar** (§11).

**La columna `Sustituto`** de `progreso-verbos.md` guarda lo que Jorge dijo en
lugar del verbo (`afford → "I don't have money for"`). Es el campo de
diagnóstico más útil del archivo: muestra el patrón de evasión, no solo la
tasa de fallo. Se sobrescribe con el rodeo más reciente.

---

## 8. Weak Verbs del día y el circuito con los otros ejercicios

### Cierre de sesión: TOP 5

**La sesión NO se corta a los 5 fallos.** Termina siempre por volumen (3 tandas)
o por tiempo. Cortar al quinto fallo haría que un mal día durara 6 ítems y un
buen día no terminara nunca — justo al revés de lo que interesa.

Los **Today's Weak Verbs** son los **5 peores de la sesión**, ordenados:
`❌ con rodeo` → `❌` → `⚠️ con ?` → `⚠️`. Si hubo menos de 5 fallos, la lista
es más corta. Se entregan con su versión nativa lista para usar.

### Ingesta: el banco crece con los errores de los otros ejercicios

Este es el circuito completo:

```
/talk detecta el hueco  →  /verbs lo automatiza  →  /ingles lo mete en estructura compleja
```

**Cada 5 sesiones, o cuando Jorge escriba `sync`**, el coach lee **en modo solo
lectura, con `grep`**:

- `talk/progreso-talk.md` — tabla de GAPs 🔴 y 🟡: la mayoría de los GAPs son
  verbos que no supo decir. Cada uno entra al banco como ⚪.
- `estructuras/log-estructuras.md` y `talk/log-talk.md` — las últimas sesiones, buscando rodeos en las
  correcciones (`✗ … → ✓ …` donde lo que cambia es el verbo).

**Nunca se escribe fuera de `verbos/`.** La ingesta añade filas a
`banco-verbos.md` y `progreso-verbos.md` y nada más.

Un verbo entra al banco con **2-3 frases modelo del contexto real de Jorge**,
no con una definición. Y se anota su trampa: por qué lo esquivó.

---

## 9. Cómo se arma la ronda

**15 ítems (3 tandas de 5).** Antes de lanzar nada se lee
`progreso-verbos.md` entero y se selecciona, por prioridad:

1. **Vencidos** (próxima revisión ≤ hoy): primero 🔴, luego 🟡. Mandan. Si hay
   15 o más vencidos, la sesión es solo repaso y **no entran nuevos**.
2. **Nuevos ⚪: máximo 3-4**, y solo si queda hueco.
3. **Un ✅ de control** cada 3-4 sesiones, metido sin avisar, para detectar
   oxidación.

**Interleaving obligatorio:** nunca agrupar por categoría. Cinco phrasal verbs
seguidos crean falsa sensación de dominio — el cerebro coge el patrón de la
tanda, no el verbo. Cada tanda mezcla `CONF` / `PER` / `PHR` / `OPI` y mezcla
`ES` con `SIT`.

**Un verbo aparece una sola vez por sesión.** Si se repitiera, el segundo
intento vendría de la corrección recién leída y no de la memoria.

**Coste de lectura:** `progreso-verbos.md` entero (es una tabla corta), pero de
`banco-verbos.md` **solo las 15 filas seleccionadas**, con `grep`. Nunca se
vuelca el banco completo: el coste de una sesión no debe crecer con el banco.

---

## 10. Reglas para el coach (resumen operativo)

- **Nunca** dar el verbo objetivo, ni hueco, ni opciones. Frase entera desde cero.
- **Nunca** meter una pista léxica del verbo dentro del estímulo.
- 5 estímulos de golpe, numerados. Esperar las 5 respuestas juntas.
- Mitad `ES`, mitad `SIT` en cada sesión.
- El nivel del estímulo lo fija el escalón SRS del verbo, no el capricho.
- **Rodeo = ❌**, aunque el inglés sea impecable. Y se anota el sustituto.
- `?` de Jorge = ⚠️, aunque el verbo esté bien.
- Corrección **desarrollada en los 5 ítems**, aciertos incluidos (§5): formas
  del verbo, `✓`, `ES`, `~`, `✔ bien`, `✘ mal`, `+` vocabulario.
- El `SIT` cierra en **una sola acción sensata**, sin pista del verbo (§3).
- Barra por tanda, motivacional, fuera de `progreso-verbos.md`.
- Interleaving: mezclar categorías dentro de cada tanda.
- Un verbo, una entrada por sesión.
- Cerrar con TOP 5 Weak Verbs + actualizar `progreso-verbos.md` y `log-verbos.md`.
- Ingesta desde `/talk` y `/ingles` cada 5 sesiones o con `sync`. **Solo lectura.**
- Se escribe a disco **una vez por sesión, al cerrarla** — examen o refuerzo (§11).
- Antes de arrancar, mirar la fecha del último log: ¿hay una sesión de hoy?
  Sí → **refuerzo**. No → **examen**. Jorge no declara nada.
- En refuerzo: mismo verbo, **estímulo nuevo**, mismo nivel N que en el examen.
- Un refuerzo puede bajar el veredicto a MAL; **nunca** subirlo a bien.
- La tabla de métricas solo recibe filas de **examen**.

**Números fijos:** 15 ítems · 3 tandas de 5 · máx. 3-4 nuevos por sesión ·
~15 min · intervalos 1 → 2 → 4 → 8 → 10 · niveles N1→N4 · ✅ = 3 aciertos en
3 días distintos + último peldaño + un acierto en N4.

---

## 11. Examen y refuerzo: varias sesiones el mismo día

El SRS de §7 mide en **días**, pero Jorge entrena en **turnos** (mañana, noche,
ratos libres). Sin esta sección, la segunda sesión del día se quedaría sin
material: sus verbos vencen "mañana", no "hoy". Esto lo resuelve **sin tocar los
intervalos**.

### Las dos clases de sesión

|  | **EXAMEN** | **REFUERZO** |
|---|---|---|
| Cuál es | la **primera** sesión del día | la 2ª, 3ª, … del mismo día |
| Qué hace | **mide** | **entrena** |
| Toca el SRS | sí | solo para empeorar (ver abajo) |
| Entra en métricas | sí | **no** |
| Qué material lleva | ronda normal de §9 | **todo lo del examen de hoy**: fallos **y** aciertos |

**Detección automática.** Al arrancar se mira la fecha de la última entrada de
`log-verbos.md`. Si ya hay una de hoy (`date +%F`) → **es refuerzo**. Si no →
**es examen**. Jorge no tiene que declarar nada.

La primera sesión del día es el examen **sea la hora que sea**. Si un día solo
entrena por la noche, esa sesión es el examen.

### La regla del veredicto: asimetría

**El veredicto del día lo fija la primera exposición. Durante el día solo puede
empeorar, nunca mejorar.**

```
examen ❌  →  refuerzo ✅   ⇒  el día cuenta ❌
examen ✅  →  refuerzo ❌   ⇒  el día cuenta ❌
```

No es un capricho: las dos direcciones **no prueban lo mismo**.

- *Fallo → acierto* dentro del día se explica por **recencia**: la corrección se
  leyó hace horas. No es recuperación desde memoria, así que no cuenta como
  progreso. Es el mismo principio de §9 ("un verbo, una entrada por sesión"),
  subido a la escala del día.
- *Acierto → fallo* dentro del día **no** tiene explicación benigna: falla *a
  pesar* de haberlo visto esta mañana. Esa señal es más fuerte, no más débil.

Consecuencia asumida: **repasar puede bajar la nota del día.** Se acepta. El
objetivo no es el porcentaje, es que el verbo esté disponible; si se cae por la
noche, es que no estaba, y el sistema tiene que saberlo. Un sistema que solo se
equivoca hacia abajo es más útil que uno que infla.

### Cómo se lanza un refuerzo

- **Estímulos siempre distintos** a los del examen. Mismo verbo, situación
  nueva. Si se repite el estímulo se memoriza la frase, no el verbo (§6) — y
  además el contexto nuevo suma vocabulario y fija mejor la huella.
- **Mismo nivel N que tuvo en el examen.** No se baja a N1: un refuerzo
  demasiado fácil no consolida.
- Mismo formato de tandas y de corrección (§4, §5).
- La barra de recompensa se muestra igual, pero es solo ánimo.

### Escritura a disco

**Cada sesión escribe**, examen y refuerzo. Un refuerzo puede **sobrescribir el
veredicto a MAL** en `progreso-verbos.md`; nunca a bien. Se hace así porque no
se puede saber de antemano cuál será la última sesión del día.

En `log-verbos.md` la entrada de un refuerzo se marca en su cabecera:

```
## AAAA-MM-DD — sesión N · REFUERZO (2º pase del día)
```

**La tabla de métricas de `progreso-verbos.md` solo recibe filas de EXAMEN.**
Si se mezclaran, el % de acierto subiría solo y la curva dejaría de significar
nada.

### Cuántos refuerzos

**Sin tope duro: lo fijan el tiempo y la motivación de Jorge.** Como guía, el
rendimiento cae rápido — el 2º pase del día aporta mucho, el 3º bastante menos,
y a partir del 4º casi nada, además de comerse el tiempo del examen del día
siguiente, que vale más.

### Alcance

Esta lógica es de **`/verbs` y `/ingles`** — ejercicios de ítems discretos con
SRS. **No se aplica a `/talk` ni a `/chain`**: no puntúan ítems, miden fidelidad
al pensamiento y velocidad de encadenado. Ahí varias sesiones el mismo día son
simplemente varias sesiones, sin veredicto que proteger.
