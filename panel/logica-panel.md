# Lógica del panel

Documento maestro del **panel diario** (`/hoy`). Explica qué es, qué lee, cómo
decide lo que toca y qué escribe al cerrar. Los otros dos archivos de esta
carpeta (`estado.sh`, `bitacora.md`) son herramienta y datos; la lógica vive
aquí.

---

## 1. Qué es esto y qué NO es

**Qué es:** la capa que falta entre los cinco ejercicios. Un sitio donde Jorge
abre la terminal, ve **en 20 segundos** el estado real de todo el sistema, y
**habla en español** con el coach sobre qué hacer hoy y por qué.

**Qué NO es:** no es un ejercicio más. Aquí no se practica inglés, no se
puntúa nada y no se producen frases. Si a mitad de panel apetece practicar, se
lanza el ejercicio que toque y el panel se acaba ahí.

**Por qué hace falta.** Los cinco ejercicios están aislados a propósito —cada
uno con su lógica, su banco y su progreso— y ese aislamiento es correcto: evita
que la contabilidad de uno contamine la del otro. Pero tiene un precio: **nadie
ve el conjunto**. Ningún ejercicio sabe cuántos días lleva sin tocarse otro, ni
que una estructura lleva tres sesiones fallando, ni que hay ocho GAPs 🔴
pudriéndose. El panel es el único sitio desde el que se ve eso.

**Idioma:** español, todo. Es la única parte del sistema donde se habla del
sistema en vez de hablar en inglés.

---

## 2. Qué lee y qué escribe

**Lee** (solo lectura, siempre):

| Archivo | Para qué |
|---|---|
| `estructuras/progreso-estructuras.md` | vencidas hoy · fallos acumulados · cobertura |
| `verbos/progreso-verbos.md` | verbos vencidos · sustitutos (evasión) · cobertura |
| `talk/progreso-talk.md` | GAPs sin recuperar · temas · métricas por sesión |
| `chain/progreso-chain.md` | eslabones usados · métricas por sesión |
| `estructuras/log-estructuras.md` | fecha y nº de sesiones de `/ingles` |

**Escribe:** solo `panel/bitacora.md`. **Nunca** toca un `progreso-*.md`, un
banco ni un log de ejercicio. Esa regla no es negociable: si el panel escribiera
en los progresos, dos sistemas distintos estarían moviendo los mismos estados y
la repetición espaciada dejaría de ser fiable. El panel observa y decide; los
ejercicios son los únicos que actualizan su propio estado.

---

## 3. Las dos herramientas de la carpeta

`panel/` guarda los dos scripts del sistema, y la división entre ellos es la
misma idea aplicada dos veces: **lo que puede ser código, no lo hace el modelo.**

| Script | Qué hace | Quién lo llama |
|---|---|---|
| `estado.sh` | **solo lee.** Snapshot de los cinco ejercicios en ~35 líneas | `/hoy`, al arrancar · `/drill`, filtrando su cola |
| `cierre.sh` | **escribe.** Aplica el SRS y reescribe un `progreso-*.md` | `/ingles` y `/verbs`, al cerrar. **`/drill` no lo llama nunca** |

`cierre.sh` es la excepción aparente a la regla de aislamiento (§2) y no la
rompe: lo invoca **el ejercicio dueño del fichero**, con su propio nombre como
primer argumento. El panel nunca lo llama.

---

## 3.1. El snapshot: `estado.sh`

**El coach no lee los `progreso-*.md` a mano.** Ejecuta:

```bash
bash panel/estado.sh
```

y trabaja con su salida, que son ~30 líneas. Es deliberado y por el mismo motivo
que `estructuras/logica-estructuras.md` §6 obliga a `grep` en vez de volcar el
banco: **el coste de abrir el panel no debe crecer con el tamaño de los bancos.**
Volcar los cuatro progresos enteros son miles de líneas para responder a una
pregunta que cabe en media pantalla.

El script imprime seis bloques:

1. **Última sesión de cada ejercicio** — fecha, hace cuántos días, total.
2. **Vencido hoy** — estructuras y verbos con fecha de revisión ≤ hoy, con su
   estado. `chain` y `talk` no aparecen: no van por fecha.
3. **Atascos** — lo que el sistema no está arreglando solo (§5).
4. **Cola de drill** — los mismos atascos, ordenados por prioridad y con su tipo
   de drill (`drill/logica-drill.md` §3). Es lo que consume `/drill`, que lo
   filtra con `sed -n '/COLA DE DRILL/,/^$/p'` en vez de leer los progresos.
5. **Cobertura de los bancos** — cuánto se ha tocado y cuánto está ✅.
6. **Ritmo** — días con sesión en los últimos 7 y racha actual. **El drill no
   cuenta aquí**: la racha sigue significando "hice un ejercicio de verdad".

Solo se abre un archivo a pelo cuando hace falta el detalle de algo concreto que
el snapshot ha señalado — y entonces con `grep`, nunca entero.

---

## 4. Cómo se decide qué toca hoy

Reglas en orden. La primera que dispare, manda.

1. **La cola vencida es lo primero.** Si `estructuras` tiene **≥5 vencidas** →
   toca `/ingles`. Si `verbos` tiene **≥8 vencidos** → toca `/verbs`. Dejar
   crecer la cola rompe la repetición espaciada: una estructura repasada cinco
   días tarde ya se ha olvidado y el intervalo que se le calcula es mentira.
2. **Nada se queda parado.** Ningún ejercicio puede pasar **más de 4 días** sin
   tocarse. Si alguno lo supera, toca ese, aunque haya cola en otro.
3. **Lo que no se ha estrenado, se estrena.** Un ejercicio con 0 sesiones tiene
   prioridad sobre uno con 10: no se sabe siquiera si funciona.
4. **No dos días seguidos el mismo**, salvo que la regla 1 lo imponga.
5. **Ajuste por tiempo y energía**, que decide Jorge y el coach respeta:

   | Tiene | Recomendación |
   |---|---|
   | 2-5 min, en cualquier sitio | `/drill` — sin ronda, se corta cuando quiera |
   | 5 min | `/verbs` — es el único de 5-8 min |
   | 15-20 min y cansado | `/ingles` — el más guiado, se responde y ya |
   | 15-20 min y con ganas de hablar | `/talk` |
   | 15-20 min y con la cabeza despejada | `/chain` — el que más cuesta |

**`/drill` queda fuera de las reglas 1-4.** No puntúa, no tiene cola de repaso
propia y no hace avanzar ningún banco, así que no compite por el turno del día:
si entrara, el panel empezaría a recomendar drill cada día que no se hubiera
drilleado, y eso es ruido. El panel **señala su cola**; lanzarlo es cosa de
Jorge, cuando tiene cinco minutos sueltos.

**El coach recomienda, no impone.** Da una opción con su motivo en una línea. Si
Jorge quiere otra cosa, se hace otra cosa y se anota en la bitácora: lo que
sostiene el hábito es que apetezca abrirlo, no que el algoritmo tenga razón.

---

## 5. Los atascos: qué cuenta como alarma

Nueve señales. El script las saca; el coach las interpreta y las comenta.

Las de estructuras y verbos **necesitan las tres columnas de nota**
(`logica-estructuras.md` §5 · `logica-verbos.md` §7): sin una `Regular` propia,
las dos alarmas de *estancamiento* son indetectables — el caso "nunca falla del
todo y nunca cuaja" deja `Mal` a 0 para siempre y la fila parece virgen.

| Alarma | Umbral | Qué significa y qué se hace |
|---|---|---|
| **Estructura reincidente** | ≥2 ❌ y `Bien ≤ Mal` | No es olvido, es un error fosilizado: el molde no está. Se propone **drill** — frases cortas y aisladas donde la salida fácil esté bloqueada, antes de volver a encadenarla |
| **Estructura estancada** | ≥3 ⚠️ y **cero** ✅ | Nunca falla del todo y nunca cuaja: sale siempre a medias. Es el perfil de lo fosilizado que la alarma de ❌ no ve, porque `Mal` se queda en 0 para siempre. Mismo tratamiento: **drill**. A 2 ⚠️ el script solo avisa (*vigilar*) |
| **Verbo reincidente** | ≥2 ❌ y `Bien ≤ Mal` | El rodeo está fosilizado: no es que no sepa el verbo, es que tiene una salida alternativa más rápida. **Drill**, y mirar su `Sustituto` |
| **Verbo estancado** | ≥3 ⚠️ y **cero** ✅ | Sabe el verbo y nunca lo monta bien — preposición, colocación o separabilidad. Distinto del rodeo y con arreglo distinto: no hay que forzar el verbo, hay que fijar su patrón |
| **Tabla descuadrada** | `Bien + Regular + Mal ≠ Vistas` | En `estructuras/` o en `verbos/`: un cierre se escribió mal y la fuente de verdad ya no es fiable. Se arregla **antes** de practicar nada, reconstruyendo la fila desde el log del ejercicio |
| **GAP sin recuperar** | 🔴 con >7 días | El GAP solo vuelve cuando vuelve su tema (`talk/logica-talk.md` §6). Si el tema no vuelve, se pudre. Se propone repetir tema o pasar el GAP a `/verbs` por la vía de ingesta (`verbos/logica-verbos.md` §8) |
| **Estructura esquivada** | tiene salida fácil anotada | Dijo otra cosa correcta en su lugar, así que no cuenta como fallo y el sistema no la ataca solo. La siguiente frase ES tiene que **bloquear ese sinónimo** (`logica-estructuras.md` §2) |
| **Verbo esquivado** | tiene sustituto anotado | El patrón de evasión es el diagnóstico más valioso del sistema. Si se repite el mismo rodeo, hay que forzar el verbo |
| **Ejercicio sin estrenar** | 0 sesiones | Banco cargado y nunca usado. Es deuda, no patrimonio |

**`Mal` nunca baja**, así que las dos alarmas de reincidencia llevan `Bien ≤ Mal`
además del umbral de fallos: sin esa segunda mitad, un ítem que falla dos veces
se quedaría marcado **para siempre** aunque después acertara cinco, y la lista
solo podría crecer. Sale de la alarma cuando los aciertos **superan** a los
fallos — empatar no basta. *(Corregido el 2026-08-21; hasta entonces era `≥2 ❌`
a secas y no se había notado porque ningún ítem había salido aún del pozo.)*

**Las seis primeras alarmas son la cola de `/drill`** (`drill/logica-drill.md`
§3), ordenadas: primero las que tienen fallos **y** salida fácil anotada, luego
fallos, luego estancamiento, luego esquiva joven. Ojo con lo que el drill **no**
hace: no baja ninguna de estas alarmas. Los contadores solo los mueve
`cierre.sh`, así que un ítem sale de la cola acertándolo **encadenado** en
`/ingles` o `/verbs`, nunca drilleándolo.

---

## 6. La conversación

Después del snapshot, el panel es **conversación**, no informe. El coach:

- **Resume en 3-4 líneas**, no repite el volcado. Jorge ya lo tiene delante.
- **Señala UNA cosa** que le llame la atención hoy — la que más mueva la aguja,
  no las cinco.
- **Recomienda un ejercicio con su motivo**, en una línea.
- **Se calla y escucha.** Aquí es donde Jorge cuenta lo que no está en ningún
  archivo: que anoche se atascó con su pareja en algo concreto, que el ejercicio
  X le aburre, que quiere cambiar una regla. Eso vale más que cualquier métrica.

Temas que son del panel y de ningún otro sitio:
- Cambiar reglas del sistema (intervalos, tamaño de ronda, formato de corrección).
- Añadir o retirar ejercicios.
- Qué construir a continuación.
- Volcar lo que no supo decir en la vida real hoy → va a `bitacora.md` §Captura,
  y de ahí lo recoge el ejercicio que corresponda.

---

## 7. Cierre

El panel se cierra de una de dos formas:

**A) Se lanza un ejercicio.** Se anota la fila en `bitacora.md` con lo decidido
y se lanza. El ejercicio ya actualiza lo suyo al terminar.

**B) Solo se ha hablado.** Se anota igual, con `—` en ejercicio.

**Qué se escribe en `bitacora.md`** (y nada más):
1. Una fila en la tabla del día: fecha, qué recomendó el panel, qué se hizo de
   verdad, y una línea de qué se habló.
2. Si salió una **decisión** (cambiar una regla, construir algo), va a
   *Decisiones abiertas* con fecha. Cuando se ejecuta, se marca hecha.
3. Si Jorge soltó algo que no supo decir en la vida real, va a *Captura*.

---

## 8. Reglas para el coach (resumen operativo)

- Ejecutar `bash panel/estado.sh` **antes de decir nada**. Sin snapshot no hay panel.
- No abrir los `progreso-*.md` enteros. Solo `grep` puntual si hace falta detalle.
- **Nunca escribir fuera de `panel/bitacora.md`.**
- Resumir en 3-4 líneas, no repetir el volcado.
- Señalar **una** cosa, no cinco.
- Recomendar un ejercicio con un motivo de una línea, y aceptar que Jorge elija otro.
- Todo en español. Aquí no se practica inglés.
- Si Jorge lanza un ejercicio, anotar la fila y **soltar el panel**: manda la
  lógica del ejercicio, no ésta.
- Leer *Decisiones abiertas* y *Captura* de `bitacora.md` cada vez: si hay
  capturas pendientes, recordarlas antes de recomendar nada.
