# Lógica del drill

Documento maestro de `/drill`. Explica **qué es un drill, cómo se elige el ítem,
cómo se construye el estímulo y por qué no puntúa**. `log-drill.md` es solo
datos; la lógica vive aquí.

---

## 1. Qué es y qué no es

`/drill` es el **ejercicio de bolsillo**: micro-ítems de lo que Jorge está
fallando **ahora mismo**, saliendo uno detrás de otro hasta que él dice `para`.
Sin ronda cerrada, sin número fijo, sin duración. Dos minutos o quince.

**Qué lo hace distinto de los otros cuatro ejercicios:**

|  | `/ingles` `/verbs` `/talk` `/chain` | `/drill` |
|---|---|---|
| Ronda | cerrada, decidida al arrancar | abierta, hasta que Jorge para |
| Duración | 15-20 min | libre |
| Escribe estado | sí, en su progreso | **no** |
| Cortarlo a mitad | cuesta (media sesión registrada) | **gratis** |
| Para qué sirve | avanzar el banco | **desatascar lo atascado** |

Es el único que se puede abrir tres minutos en cualquier sitio y cerrar sin
coste, porque no hay nada que cuadrar al salir.

**Lo que NO es:** no es una sesión de `/verbs` más corta. `/verbs` mide y hace
avanzar el banco entero; `/drill` no mide nada y solo toca lo que ya está roto.

---

## 2. El drill NO vacía la cola

Es la regla que hay que tener clara antes que ninguna otra, porque es
contraintuitiva:

> **El drill entrena. Lo que saca un ítem de la cola es acertarlo encadenado en
> `/ingles` o `/verbs`, no drillearlo.**

Un ítem sale de la cola cuando sus contadores en `progreso-*.md` dejan de
cumplir la alarma (§3), y esos contadores **solo los mueve `panel/cierre.sh`**,
que solo lo llaman `/ingles` y `/verbs`. Puedes drillear `lend` diez veces
clavándolo las diez y seguirá en la cola.

**Y está bien que sea así.** Cuatro aciertos seguidos del mismo verbo, aislado y
sabiendo que toca, son **recencia pura** — el mismo argumento por el que un
refuerzo no puede subir el veredicto del día (`logica-estructuras.md` §9) y por
el que un acierto tras un fallo en la misma sesión no cuenta
(`logica-estructuras.md` §7). Si el drill puntuara, promocionaría a ✅ por
empollar, que es justo lo que `logica-estructuras.md` §4.2 existe para impedir.

**Consecuencia operativa:** el cierre del drill (§8) **siempre** recuerda dónde
se cobra el trabajo. Sin ese recordatorio, se acaba drilleando lo mismo un mes.

---

## 3. Cómo se elige el ítem: la cola

La cola sale de las mismas alarmas que imprime `panel/estado.sh`, sobre los dos
progresos a la vez. **No hay estado propio ni columna nueva**: quién está en
drill es derivable de lo que ya hay.

| Prioridad | Condición | Por qué va ahí |
|---|---|---|
| **1** | `Mal ≥ 2` **y** salida fácil anotada (`Esquiva` / `Sustituto`) | Falla *y* se sabe por dónde se escapa. Es el drill con más munición: el sustituto literal dice qué hay que bloquear |
| **2** | `Mal ≥ 2` | Error fosilizado sin salida documentada |
| **3** | `Regular ≥ 3` y `Bien = 0` | Estancado: sale siempre a medias y nunca cuaja |
| **4** | salida fácil anotada, sin llegar a 2 fallos | Esquiva joven. No es urgente, pero ya está localizada |

Dentro de la misma prioridad: **más fallos primero**, y a igualdad de fallos,
**menos aciertos primero**.

### La alarma se apaga: `Bien ≤ Mal`

`Mal` es un contador acumulativo y **nunca baja**. Con la condición `Mal ≥ 2` a
secas, un ítem que falla dos veces se queda en la cola **para siempre**, aunque
después acierte cinco: la lista solo podría crecer y en dos semanas dejaría de
servir para elegir.

Por eso la condición real es **`Mal ≥ 2` y `Bien ≤ Mal`**. Sale de la cola
cuando los aciertos **superan** a los fallos — empatar no basta. `afford`
(2 ❌ / 1 ✅) necesita dos aciertos más; `lend` (3 ❌ / 0 ✅), cuatro.

*(Corregido el 2026-08-21. Hasta entonces `estado.sh` marcaba drill con
`mal >= 2` a secas. No se había notado porque ningún ítem había salido todavía
del pozo.)*

Las otras dos alarmas ya se apagaban solas: la de estancado muere al primer ✅
(`Bien = 0` deja de cumplirse) y la de esquiva, cuando el cierre limpia la
columna con `~ —`.

---

## 4. Los dos formatos

Las alarmas de `logica-panel.md` §5 no describen el mismo problema, así que **no
pueden tener el mismo drill**. Meterlas en un molde único sería el error de
diseño de este ejercicio.

### A · Drill de BLOQUEO — prioridades 1, 2 y 4

**El problema:** tiene una salida más rápida y la coge siempre. `lend` →
*«i borrowed mine»*. No es que no sepa el verbo: es que llega antes al otro.

**El drill:** 4 micro-estímulos cortos, **en contextos distintos**, cada uno
construido para que **el sustituto anotado sea inservible**. No basta con que el
ítem quepa: tiene que ser la única forma de decir lo que el estímulo pide
(`logica-estructuras.md` §2).

**No se nombra el ítem, ni se avisa de cuál es, ni se dice qué está prohibido.**
El bloqueo va **dentro del estímulo**, por construcción. Decir *«hoy no vale
borrow»* es regalar medio molde y convierte el ejercicio en reconocimiento
(`logica-verbos.md` §2).

> **Ejemplo — `lend`, sustituto «i borrowed mine»**
> `borrow` es coger prestado; `lend` es darlo. Basta con que en los cuatro
> estímulos **Jorge sea quien presta**, y `borrow` deja de poder decirlo:
> *«Mi compañero se quedó sin batería y le dejé mi power bank todo el turno.»*

**Cuando la salida fácil anotada no es munición.** A veces la columna
`Sustituto` / `Esquiva` no guarda un rodeo en inglés sino una nota del coach
— `blame` lleva *«(devolvió el enunciado copiado)»*, que describe lo que pasó
pero no da nada que bloquear. En ese caso el ítem **baja de hecho a prioridad
2**: no hay sinónimo concreto que inutilizar, así que los 4 estímulos
simplemente tienen que **exigir el ítem y no admitir perífrasis**. El script no
puede distinguirlo; el coach sí, al leer la fila.

### B · Drill de PATRÓN — prioridad 3

**El problema:** el opuesto. `run out of` sale — 3 ⚠️ demuestran que el verbo se
recupera bien. Lo que se rompe es el **montaje**: preposición, separabilidad,
colocación, complemento.

**El drill: aquí el ítem SÍ se da.** No viola `logica-verbos.md` §2, porque §2
protege la *recuperación*, y la recuperación ya está probada. Forzarlo cuatro
veces más no arregla nada — lo que falla no es encontrarlo.

Los 4 micro-ítems **varían justo el eje que se rompe**, no el tema: objeto
distinto, tiempo distinto, negativa, forma compuesta. No es traducir: es montar.

---

## 5. Bloques de 4, y vueltas

Los micro-ítems salen en **bloques de 4 del mismo ítem**, y al terminar el
bloque se pasa al siguiente de la cola:

```
lend ×4  →  blame ×4  →  can't be bothered ×4  →  rely on ×4  →  …
```

Si Jorge aguanta hasta que la cola da la vuelta, **el ítem vuelve con contextos
nuevos** — nunca repitiendo un estímulo ya usado en esta sesión.

**Por qué bloques y no rotación.** `logica-estructuras.md` §4.3 prohíbe agrupar
por categoría, y con razón: masificar crea falsa sensación de dominio porque el
cerebro coge el patrón del bloque. Aquí se hace **a propósito y por un motivo
distinto**: el objetivo del drill no es *aprender* el ítem —ya se sabe— sino
**romper un hábito de evasión**, y un hábito no se rompe con una exposición
suelta cada tres días. La masificación es el martillo; la segunda vuelta con
contextos nuevos es lo que impide que el acierto sea del bloque y no suyo.

Y es exactamente por esto por lo que el drill **no puede puntuar** (§2): lo que
lo hace eficaz como entrenamiento es lo mismo que lo invalida como medida.

**Fin del bloque:**
- **4 de 4 bien** → siguiente ítem de la cola. No se insiste sobre lo que ya sale.
- **algún fallo** → siguiente ítem igualmente. El ítem volverá en la siguiente
  vuelta con contextos nuevos.
- **0 de 4** → **rescate** (§6), y después siguiente ítem.

---

## 6. El rescate

Si un ítem sale **mal las cuatro veces**, insistir a ciegas no entrena nada: no
hay nada que recuperar, el molde no está.

Entonces y solo entonces se **da el ítem** —nombre, patrón y una frase modelo
del banco— y van **2 micro-ítems más con el molde puesto**. Eso ya no es
recuperación: es fijar. Es peor que producir solo, y es mucho mejor que cerrar
el bloque en cero.

Después se pasa al siguiente de la cola. **Nunca se insiste más allá del
rescate**: si sigue sin salir, el problema no lo arregla el drill de hoy.

---

## 7. Corrección: desarrollada, todos los micro-ítems

El drill sigue siendo de **ritmo**: tras responder, corrección y **siguiente
micro-ítem sin esperar `siguiente`** — como `/verbs`, no como `/ingles`.

**Todos los micro-ítems van desarrollados, aciertos incluidos** (cambio del
2026-08-21, pedido por Jorge: la corrección de una línea marcaba el fallo pero
no le enseñaba nada — es el mismo cambio que ya se hizo en `logica-verbos.md` §5
el 2026-08-20, y por el mismo motivo).

**Formato — markdown, no bloque de código:**

```
**9 ⚠️ can't be bothered** — me da pereza

> ✗ i couln't be borether to go oout
> ✓ **I can't be bothered to go out after my shift.**
> ES · No me apetece nada salir después del turno.
> ~ · ai KANT bi BO-dhad tu gou-AUT AF-ta mai SHIFT

**Bien** · el molde entero te salió: *be bothered to* + verbo
**Mal** · tiempo: es ahora → *I can't be bothered* (*couldn't* = aquel día)
**Mal** · ortografía: *couldn't · bothered · out*
**Uso** · pereza, no incapacidad. `can't be bothered + to V` o `+ -ing`.
```

| Campo | Qué lleva | Cuándo |
|---|---|---|
| cabecera | número · icono · ítem — glosa en español | siempre |
| `✗` | la frase de Jorge **literal**, con sus typos | si falló algo |
| `✓` | la versión nativa completa, en negrita | siempre |
| `ES` | traducción al español de la versión nativa | siempre |
| `~` | pronunciación (convenciones de `estructuras/logica-estructuras.md` §3) | siempre |
| `Bien` | **qué parte de su frase estaba bien**, y por qué tiene mérito | siempre |
| `Mal` | un error por línea, no todos amontonados | si falló algo |
| `Uso` | matiz y molde: 1-2 líneas, sin teoría gramatical | siempre |

**`Bien` no es relleno** (misma razón que en `logica-verbos.md` §5): sin él, un
⚠️ y un ❌ se leen igual de mal, y no lo son. Si la frase se salva entera salvo
un detalle, se dice.

**Coste asumido:** el bloque de 4 pasa de ~1 min a ~4. El drill deja de ser de
tres minutos y pasa a ser de diez o quince. Se acepta a cambio de que la
corrección enseñe. Lo que **no** cambia: sigue sin puntuar (§2), sigue sin tocar
progresos (§8) y el estímulo sigue sin dar pistas (§4).

**Mismos iconos y mismo criterio** que los ejercicios de origen: ❌ no salió (otro
verbo, **rodeo**, o en blanco) · ⚠️ correcto pero mal montado · ✅ correcto y
natural · 🌟 nativo. **El rodeo es ❌ aunque el inglés sea impecable**
(`logica-verbos.md` §5) — con más razón aquí, donde el estímulo estaba
construido para impedirlo: si el rodeo ha colado, el fallo es del estímulo y hay
que decirlo.

**Sin barra de recompensa por bloque.** El drill no tiene nota; poner porcentaje
a un ejercicio que no puntúa invita a leerlo como progreso, y no lo es.

---

## 8. Aislamiento

| | |
|---|---|
| **Lee** (solo `grep`, nunca entero) | `verbos/progreso-verbos.md` · `estructuras/progreso-estructuras.md` · `verbos/banco-verbos.md` · `estructuras/banco-estructuras.md` · `estructuras/banco-relato.md` |
| **Escribe** | `drill/log-drill.md` **y nada más** |
| **Nunca toca** | ningún `progreso-*.md` · ningún banco · `panel/cierre.sh` · `panel/bitacora.md` |

`/drill` **no llama a `cierre.sh`**. Es el único ejercicio que no lo hace, y es
la consecuencia directa de §2.

---

## 9. Cierre

Jorge dice `para` (o `cierra`, `basta`, `ya`). Entonces, y en este orden:

1. **Lo que sigue sin salir** — los ítems que fallaron, con su versión nativa y
   su `~`, listos para soltar. Si no falló nada, se dice.
2. **Una línea de patrón**: qué tipo de salida fácil está cogiendo hoy.
3. **El recordatorio de §2**, siempre, sin excepción:
   *«Esto no baja la cola. `lend` sale cuando lo aciertes encadenado en `/verbs`.»*
4. **Añadir la sesión a `drill/log-drill.md`** con el formato que ya tiene.

**No se escribe nada más.** Ni progreso, ni bitácora, ni métricas.

---

## 10. Reglas para el coach (resumen operativo)

- La cola se lee de los dos progresos; el orden es el de §3, no el que apetezca.
- Bloques de 4 del mismo ítem. Al acabar, siguiente de la cola.
- **Bloqueo:** no se nombra el ítem ni lo que está prohibido. El estímulo lo
  bloquea por construcción.
- **Patrón:** el ítem se da. Lo que se entrena es el montaje.
- Contextos distintos entre los 4, y nunca repetir un estímulo de esta sesión.
- Corrección **desarrollada en todos** los micro-ítems, con el formato de §7.
- El rodeo es ❌, aunque el inglés sea perfecto.
- 0 de 4 → rescate y a otro. Nunca insistir más.
- **Nunca llamar a `cierre.sh`. Nunca tocar un progreso.**
- Cerrar recordando que la cola se vacía en `/ingles` y `/verbs`.
- Si no salen 4 estímulos buenos que bloqueen de verdad, **se hacen 3 y se
  dice**. Un estímulo que admite la salida fácil arruina el bloque entero.
