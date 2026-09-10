# Tiempos verbales

Registro de **errores de tiempo y forma verbal**. No es un banco ni tiene SRS:
es un **contador de reincidencia**, igual que la columna `Esquiva` de
`progreso-estructuras.md` — no mide cuánto sabe Jorge de gramática, mide **qué
error concreto repite** y **qué palabra del español debería haberle avisado**.

Nace el 2026-08-20 (`logica-estructuras.md` §3, bloque `⏱`). Antes de esa fecha
estos errores se mencionaban «de pasada, sin puntuar» y se evaporaban: se
comentaban una vez y nadie sabía que iban por el séptimo caso. Mismo agujero que
tenía el ⚠️ antes de tener columna propia.

## Reglas

- **No puntúa.** No entra en la barra de la frase ni en el SRS de estructuras.
  Decisión de Jorge el 2026-08-20: cada número mide una cosa sola.
- Se escribe **en el cierre**, con el resto de ficheros.
- **Reincidencia:** al llegar a **3 veces**, la sesión siguiente arranca
  recordando esa regla en una línea, antes de la primera frase. No es pista —
  no dice nada de las estructuras, dice su propio patrón.
- Lo que importa no es la columna `Veces`, es la de **`Disparador ES`**: el
  error no se corrige sabiendo la regla (ya se la sabe), se corrige
  reconociendo la señal en el español de origen.

| Error | Veces | Última | Regla | Disparador ES |
|---|---|---|---|---|
| Backshift: presente dentro de marco pasado | 9 | 2026-08-21 | Detrás de un verbo en pasado, la subordinada retrocede. `is` → `was`, `there are` → `there were`. Aunque siga siendo verdad hoy. | El español NO retrocede: «resulta que el perfil **está** registrado». Si el marco va en pasado, el relleno también. |
| Present perfect por past perfect (relato) | 2 | 2026-08-21 | Relato en pasado: lo anterior a ese pasado es `had` + participio, nunca `has`. | «**llevaba** / **hacía** + tiempo» dentro de un relato → `had been`. |
| Pasado simple por present perfect | 1 | 2026-08-20 | Sin momento cerrado y con efecto hasta hoy → `have/has` + participio. | «**ha** / **no ha** + participio» sin fecha ni momento concreto → `have/has`. |
| Concordancia de número | 2 | 2026-08-20 | Sujeto plural, verbo plural: `the routes **were**`. | Sujeto en plural en español. Error tonto, pero sale cada tres frases y delata. |
| Pasado simple por past perfect (anterioridad) | 1 | 2026-08-20 | Si el hecho ya era verdad ANTES del momento que narras, va `had` + participio, no pasado simple. | «**YA** estaba ahí **DESDE** el principio» — «ya» + «desde» juntos, siempre past perfect. |
| Pasado por presente habitual | 2 | 2026-08-21 | Lo que pasa siempre va en presente, aunque suene a anécdota. No es un día concreto. | «Luego **LLEGO** y me **DA** pereza» — presente en español + un «siempre» cerca = presente en inglés. |
| Presente por pasado en el hilo del relato | 1 | 2026-08-21 | Si el relato va en pasado, TODOS los verbos del hilo van en pasado simple, no solo el primero. | «me **contó**», «me **dijo**» — un pretérito en español es un pasado en inglés, siempre. |
| Past perfect por pasado simple (simultaneidad) | 1 | 2026-08-21 | `had` + participio es solo para lo ANTERIOR al relato. Lo que pasa a la vez va en pasado simple. | «**era** por el trabajo» — imperfecto simultáneo, no «había sido». |
| Present perfect por pasado simple (episodio cerrado) | 1 | 2026-08-21 | Episodio terminado y acotado → pasado simple. El present perfect solo si llega hasta AHORA. | «**Estuve** media hora…» — pretérito cerrado, ya no sigue pasando. |
| Auxiliar + verbo conjugado | 1 | 2026-08-21 | Detrás de `do/does/did/doesn't` va el verbo DESNUDO: `didn't make`, nunca `doesn't made`. | No hay disparador ES: el español conjuga el verbo principal y arrastra. Regla mecánica. |
| Preposición + infinitivo | 1 | 2026-08-21 | Toda preposición pide `-ing`: `without thinking`, `before leaving`, `instead of saying`. | «sin **pensar**», «antes de **salir**» — el infinitivo español es `-ing` en inglés. |
| Past perfect por present perfect (sin ancla) | 1 | 2026-09-10 | `had` + participio necesita **otro pasado en la frase** del que colgarse. Si no hay ninguno, es `have/has`. | La terminación de *llevar*: «lleVAN / lleVO» → `have` · «lleVABA / lleVABAN» → `had`. Y el escaneo: ¿hay otro pasado en la frase? No → `had` imposible. |

## Lo que dice el patrón hoy (2026-08-20)

Los dos errores de la sesión 6 son **espejo**:

| | Español | Jorge | Nativo |
|---|---|---|---|
| Frase 1 | «llevaba tres semanas de baja» (relato pasado) | **has** been | **had** been |
| Frase 4 | «tampoco lo ha sacado» (hasta hoy) | **didn't** bring | **hasn't** brought |

En la 1 subió el tiempo, en la 4 lo bajó. **No es desconocimiento**: en la frase
3 encadenó `it had changed` + `if I had known` + `would have stayed`, tres
compuestos seguidos, los tres bien. Y `I have been meaning` lo montó bien en la
misma frase 4 donde falló el otro.

El diagnóstico, entonces, no es «no sabe past perfect» sino **no lee el
disparador del español**. Va al azar. Por eso este fichero registra el
disparador y no la regla: la regla ya se la sabe.

```
El relato está en PASADO   →  lo anterior es  had + participio
Llega hasta AHORA          →  es              have/has + participio
Momento cerrado y fechado  →  es              pasado simple
```


## Refuerzo del 2026-08-20 (sesión 7)

Cuatro errores más, y el reparto cambia el diagnóstico:

| | Español | Jorge | Nativo | Fila |
|---|---|---|---|---|
| Frase 2 | «Luego **llego** y me **da** pereza» | after i **arrived** … i **could't** | when I **get** … I **can't** | pasado por presente habitual |
| Frase 3 | «nos **sacó**», «**caí** en que» | the lawyer **get out** … i **realize** | **pulled** out … I **realized** | backshift (nº 8) |
| Frase 3 | «**ya** estaba metida ahí **desde** el principio» | **was** there | **had been** in there | pasado simple por past perfect |
| Frase 4 | «el jefe me **ha dejado**» | the boss **have** allowed | the boss **has** let | concordancia |

**El backshift, por fin medido.** Estaba pendiente desde el 19 porque ninguna
frase lo provocaba; la 3 lo provocó y cayó. Va por 8 casos y es, con diferencia,
el error más repetido del registro. **Regla de reincidencia activada**: la
sesión 8 arranca recordándolo.

**Lo que sí acertó, y es nuevo.** En la frase 4 eligió `have allowed` —
present perfect— para «me **ha dejado** entrar tarde **dos días esta semana**».
Es EXACTAMENTE el disparador que falló esta mañana con `didn't show up`
(«tampoco lo **ha** sacado»). Ocho horas después lo leyó bien. Primer caso
registrado de disparador leído correctamente después de corregirlo.

**Confirma el diagnóstico de la mañana, con matiz.** No es que no sepa los
tiempos: es que **no mira el verbo español antes de traducir**. Cuando el
disparador se le acaba de señalar (present perfect) lo lee; cuando no
(backshift, presente habitual), va al azar. La corrección funciona, pero solo
sobre el disparador que se acaba de nombrar.


## Examen del 2026-08-21 (sesión 8)

Siete errores en cuatro frases, y el reparto dice algo nuevo:

| | Español | Jorge | Nativo | Fila |
|---|---|---|---|---|
| Frase 1 | «me **contó**» | she **tell** me | she **told** me | presente por pasado en el relato |
| Frase 1 | «**era** por el trabajo» | it **had been** | it **was** | past perfect por pasado simple |
| Frase 1 | «**llevaba** toda la semana discutiendo» | she **has been** arguing | she**'d been** arguing | present perfect por past perfect (nº 2) |
| Frase 2 | «**Estuve** media hora» | i**'ve been** looking | I **spent** half an hour | present perfect por pasado simple |
| Frase 3 | «**llego** a casa y me **da** pereza» | i **got** home … i **could't** | I **get** home … I **can't** | pasado por presente habitual (nº 2) |
| Frase 4 | «le solté **que** su plan **no tenía sentido**» | **doesn't made** sense | **didn't make** sense | backshift (nº 9) + auxiliar |
| Frase 4 | «sin **pensar**» | without **think** | without **thinking** | preposición + infinitivo |

**El diagnóstico cambia de forma.** Hasta ayer el patrón era *«se queda corto de tiempo»*: pasado simple donde tocaba perfect, presente donde tocaba pasado. Hoy aparece **el error contrario** —`it had been` por `it was`, `i've been looking` por `I spent`— y en la MISMA frase que el error de siempre. La frase 1 lleva las dos direcciones: past perfect donde no tocaba y no lo puso donde sí.

Eso descarta *«no se sabe la regla del past perfect»*. Lo que hay es **elección sin criterio**: cuando la frase pide un tiempo compuesto, se elige uno cualquiera. Confirma y agrava lo del 20: **no lee el verbo español antes de traducir** — y ahora se ve que tampoco se apoya en la regla cuando decide mal.

**Práctico para la sesión 9:** ya no basta con recordar el backshift al arrancar. Toca **el par mínimo**: dos frases seguidas, misma estructura, una que pida `had been` y otra que pida `was`, y que la diferencia esté solo en el verbo español.
