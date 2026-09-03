# Log — /drill

Registro de las sesiones de drill. **Datos, no lógica** — el método vive en
`logica-drill.md`. Solo se añade al final.

**Este fichero no decide nada.** El drill no puntúa (`logica-drill.md` §2): no
hay progreso, ni SRS, ni contadores. Esto está aquí para poder mirar atrás y ver
qué se ha estado drilleando, cuánto y con qué resultado — y para que el panel
sepa cuándo fue la última vez.

Formato de cada entrada:

```
## AAAA-MM-DD — drill N

Cola del día: <los ítems que había, en orden>

### <ítem>  ·  <bloqueo|patrón>  ·  <lo que dice su alarma>

1  <icono>  <estímulo>
   ✗ <lo que dijo>  →  ✓ <lo nativo>
…

Bloque: <n>/4   ·   <rescate, si lo hubo>

### <siguiente ítem>
…

**Cierre:** <lo que sigue sin salir · patrón de evasión del día>
```

---

## 2026-08-21 — drill 1

Cola del día: lend · blame · can't be bothered · It wasn't until… that… · deal with · rely on · afford · work out · run out of · claim

*(A mitad de sesión, a petición de Jorge, se reescribió `logica-drill.md` §7: la
corrección pasa de una línea a desarrollada en **todos** los micro-ítems, en
markdown. Mismo cambio y mismo motivo que `logica-verbos.md` §5 el 20-08.)*

### lend  ·  bloqueo  ·  3 ❌ · rodeo «i borrowed mine»

1  ⚠️  Novia sin batería en la calle, le dejas tu power bank
   ✗ i lend me girlfriend my power bank  →  ✓ I lent my girlfriend my power bank.
   (pasado *lent*; *my* por *me*. El molde `lend sb sth`, bien)

2  ⚠️  Compañero de reparto sin casco, le das el de repuesto
   ✗ i lent my secont helmet to workmate  →  ✓ I lent my spare helmet to a workmate.
   (falta el artículo *a*; *spare*. El molde `lend sth to sb`, bien)

3  ❌  El banco se negó a darles el dinero y la empresa quebró
   ✗ the bankc refuesed to give them money and the company get dow
   →  ✓ The bank refused to lend them the money and the company went under.
   (rodeo con *give*. **Estímulo flojo**: el español decía "darles", que regala
   *give*. Con "prestarles" el rodeo no habría colado)

4  ✅  Nunca le prestes dinero a tu hermano, no lo devuelve
   ✗ never lend money to your brother, he never pay you back
   →  ✓ Never lend your brother money — he never pays you back.
   (solo la `-s`)

Bloque: 1 ✅ · 2 ⚠️ · 1 ❌

### blame  ·  bloqueo  ·  2 ❌ · sin munición (la nota no era un rodeo → tratado como genérico)

5  ✅  La empresa culpó a los repartidores de los retrasos
   ✗ the company blamed the deliveries for the delays
   →  ✓ The company blamed the couriers for the delays.
   (`blame sb for sth` perfecto; *deliveries* = envíos, no personas)

6  ⚠️  No la culpo por haberse ido
   ✗ i don't blame her for leave  →  ✓ I don't blame her for leaving.
   (*-ing* tras preposición)

7  ⚠️  Le echaron la culpa de la filtración al becario
   ✗ they ended up bleming to becario for the fitration
   →  ✓ They ended up blaming the intern for the leak.
   (*blame* sin *to*; *intern*; *leak*. El *ended up + -ing*, nativo)

8  ⚠️  Cada vez que llega tarde le echa la culpa al tráfico
   ✗ everytime he arrive late he blame the trafic
   →  ✓ Every time he's late, he blames it on the traffic.
   (tres `-s` de tercera persona)

Bloque: 1 ✅ · 3 ⚠️

### can't be bothered  ·  bloqueo  ·  3 ❌ / 1 ✅

9  ⚠️  Le dices a tu pareja que no sales el viernes, pereza tras el turno
   ✗ i couln't be borether to go oout  →  ✓ I can't be bothered to go out after my shift.
   (tiempo: es ahora, *can't*; ortografía)

10 ✅  Ayer no fuiste al gimnasio de pura pereza
   ✗ i couldn't be bothered to go to gym yesterday
   →  ✓ I couldn't be bothered to go to the gym yesterday.
   (solo *the gym*. Corrigió el tiempo del 9 al vuelo)

Bloque: 2/4 — cortado, Jorge paró

**Cierre:** el ítem se recupera casi siempre (7 de 10 salieron); lo que se cae
es el andamiaje — `-s` de 3ª persona (×4), artículos *a/the* (×3), `-ing` tras
preposición, y preposición de más en *blame to*. Único rodeo real, `give` por
`lend`, y provocado por un estímulo mal redactado. La evasión léxica hoy no fue
el problema; el montaje sí.


---

## 2026-08-24 — drill 2

Cola del día: lend · blame · can't be bothered · It wasn't until… that… · deal with · rely on · afford · work out · run out of · claim

*(Jorge fijó a mitad de sesión que `siguiente ítem` significa **saltar de ítem
de la cola**, no de micro-ítem. Dos bloques quedaron cortos por eso.)*

**Ítems cubiertos hoy — no repetir esta tarde:** lend · blame · can't be
bothered · It wasn't until… that… · deal with · rely on · afford · work out.
**Sin tocar de la cola:** run out of (patrón) · claim (bloqueo).

### lend  ·  bloqueo  ·  3 ❌ · rodeo «i borrowed mine»

1  ✅  Novia a una boda, le prestas la cámara el finde
   ✓ I lent her my camera for the weekend.
   (`lend sb sth` + `lent` a la primera. El rodeo con *borrow* no apareció)

2  ⚠️  Compañero con la moto rota, le prestas la tuya
   ✗ i lent him my moto while his moto is getting repair
   →  ✓ I lent him my bike while his was being repaired.
   (*moto* no es inglés → *bike*; posesivo solo *his*; *was being repaired*)

3  ❌  El FMI le prestó al país 20.000 millones a cambio de recortes
   →  ✓ The IMF lent the country 20 billion in exchange for pension cuts.
   (en blanco — malentendido de `siguiente ítem`, no evasión)

*(4º micro-ítem lanzado y no respondido: Jorge cortó el bloque — «este ya lo
tengo muy visto». 2 de 2 respondidos con el verbo puesto, no se insistió)*

Bloque: 1 ✅ · 1 ⚠️ · 1 ❌ (cortado)

### blame  ·  bloqueo  ·  2 ❌ · genérico (la nota no era un rodeo usable)

5  ⚠️  Tu novia te echó la culpa de llegar tarde a la cena
   ✗ she blame me for get late  →  ✓ She blamed me for making us late.
   (tiempo *blamed*; **`-ing` tras preposición**: *for making*. Mismo fallo que el 21-ago)

6  ⚠️  El gobierno le echa la culpa a un hacker ruso
   ✗ in the moment that data is fiter, the govermt blame rusian hackers
   →  ✓ The moment a leak comes out, the government blames it on Russian hackers.
   (**`-s` de 3ª**; `blame sth on sb` vs `blame sb for sth`; *leak*; ortografía)

7  ⚠️  Admitió que la culpa era suya, no de su compañero
   ✗ after arguing, she admited it was her blame but your workmate
   →  ✓ After the argument, she admitted she was to blame, not her workmate.
   (*her blame* no existe → `be to blame` / `her fault`; *but* → *not*; *your* → *her*)

8  ⚠️  Se pasó meses culpándose a sí mismo
   ✗ she has been blaming her self becouse the accident
   →  ✓ She spent months blaming herself for the accident.
   (*herself* junto; `blame **for**`; `spend + tiempo + -ing`)

Bloque: 4 ⚠️ · 0 ❌ — el molde está, se cae el andamiaje. **No tocó rescate**:
el rescate es para cuando el ítem no sale, y salió las cuatro veces.

### can't be bothered  ·  bloqueo  ·  3 ❌ / 1 ✅

9  ⚠️  No sales a cenar el viernes, pereza tras el turno
   ✗ sorry bebe, i can be borther to go out for dinner
   →  ✓ Sorry babe, I can't be bothered to go out after my shift.
   (**falta la negación** — *can be bothered* dice lo contrario. Tiempo correcto,
   al revés que el 21-ago con esta misma escena)

10 ✅  El de soporte ni se molestó en leer el ticket
   ✗ they even couldn't be bothered…  →  ✓ They couldn't even be bothered to read my ticket.
   (ítem clavado y en pasado. Uso de desprecio, el que *don't feel like* no cubre.
   Solo el orden de *even*. Y *they just gave me a generic answer* es inglés bueno)

11 ⚠️  Pasas de recurrir la multa por el papeleo
   ✗ i couldn't be bothered to deal with all that peapers
   →  ✓ I can't be bothered with all that paperwork.
   (`paperwork` incontable; presente. **`deal with` le salió solo**, sin estímulo dirigido)

*(4º lanzado y no respondido: cortó el bloque)*

Bloque: 1 ✅ · 2 ⚠️ (cortado)

### It wasn't until… that…  ·  bloqueo  ·  3 ❌ / 1 ✅

12 ⚠️  No fue hasta el tercer mes cuando vio que le pagaban de menos
   ✗ it wasn't intil the thiear month in this company, that i realized they was paying me less
   →  ✓ It wasn't until my third month at the company that I realised they were underpaying me.
   (estructura entera a la primera; coma de más antes de `that`; *they were*; *underpay*)

13 ⚠️  No fue hasta la factura cuando vieron las dos suscripciones
   ✗ …that we realized we have been paying the whole year for two suscripcions
   →  ✓ …that we realised we'd been paying for two subscriptions for a whole year.
   (cláusula entera en el hueco, más difícil; *we'd been*; `pay **for**`)

14 ✅  No fue hasta 2019 cuando el gobierno admitió el programa
   ✓ It wasn't until 2019 that the government admitted the surveillance programme existed.
   (impecable. **GAP marcado en español en vez de rodeo** → *surveillance programme*)

15 ✅  No fue hasta la segunda cita cuando te contó que tenía un hijo
   ✓ It wasn't until the second date that she told me she has a kid.
   (nada que corregir. El *she has* está bien: el hecho sigue siendo verdad)

Bloque: 2 ✅ · 2 ⚠️ · 0 rodeos. **Entró como el peor de la cola y salió resuelto.**

### deal with  ·  bloqueo  ·  2 ❌ / 0 ✅

16 🌟  El marrón del cliente, te encargas mañana
   ✓ Ugh, mate — I'll deal with that tomorrow, I just don't feel like it right now.
   (frase suya entera, suena a persona. *don't feel like* **está bien elegido** —
   quería decir *no tengo ganas*, no *pereza*; nota mía retirada, tenía razón)

17 ⚠️  Tu novia, todo el día lidiando con clientes cabreados
   ✗ she's tired because she had been deal with angry costumer the whole day
   →  ✓ She's exhausted — she's been dealing with angry customers all day.
   (**`-ing` tras `been`**; presente perfecto; *customer* ≠ *costumer*)

18 ⚠️  Quién lleva la reclamación: Marta, la de quejas
   ✗ she's the resposable of complains departamend
   →  ✓ she's the one who handles complaints.
   (**falso amigo:** *responsable* no es sustantivo en inglés; `complaint` sustantivo)

19 ⚠️  No vuelves a pelearte con el seguro por teléfono
   ✗ i won't clomplin agains to insurance company, i prefer another one deal with it
   →  ✓ I'm not dealing with the insurance company on the phone again.
   (**estímulo defectuoso**: «pelearte con» tira de *argue/complain*, no inutilizaba
   la salida fácil. No cuenta como rodeo suyo — y usó `deal with` en la 2ª mitad.
   `complain to sb about sth`; *I'd rather someone else dealt with it*)

Bloque: 1 🌟 · 3 ⚠️ (uno con estímulo mío defectuoso). El verbo salió **las cuatro
veces**, y dos de ellas sin que se lo pidiera nadie (11 y 16).

### rely on  ·  bloqueo  ·  2 ❌ / 0 ✅

20 ⚠️  El caso se sostiene sobre una sola fuente anónima
   ✗ the case rely on a single anonimo ....
   →  ✓ The whole case relies on a single anonymous source.
   (**`-s` de 3ª**, y `rely → relies`. GAP: *anonymous* / *source*)

21 ⚠️  Su madre depende de él desde que se rompió la cadera
   ✗ since she broked the hild, her mom relies on him for everithing
   →  ✓ Since his mum broke her hip, she's relied on him for everything.
   (**molde completo de 3 piezas `rely on sb for sth`**, más de lo que pedía;
   *broke*; `since` + presente perfecto; nombre antes que pronombre)

22 ⚠️  En el casco antiguo no te fíes del GPS
   ✗ you need do it wint your memory  →  ✓ …you end up finding your way from memory.
   (`need **to**`; *from memory*; *old town*. `rely on` en negativo, bien)

23 ✅  No puedes vivir de las propinas
   ✓ You can't rely on tips — one good month doesn't cover a whole year's rent.
   (del tirón. Genitivo de tiempo: *a whole year's rent*; `cover` para gastos)

Bloque: 1 ✅ · 3 ⚠️ · 0 rodeos. Verbo + preposición las cuatro veces.

### afford  ·  bloqueo  ·  2 ❌ / 1 ✅ · rodeo típico «I don't have money for»

24 ❌  Una moto nueva, con lo de este mes ni de broma
   ✗ i can't borrow the new bike, what i erned this month it's a joke
   →  ✓ I can't afford a new bike — not on what I made this month.
   (**verbo equivocado: `borrow`** — el mismo comodín con el que esquiva `lend`.
   Le tapa dos verbos distintos. Sujeto duplicado *what I earned… it's*, calco del ES)

25 ✅  El partido no se puede permitir otro escándalo
   ✓ The party can't afford another scandal before the elections.
   (solo ortografía *afford*. **`afford` no económico**, el uso que hace útil el
   verbo, y lo dio solo en el ítem siguiente al fallo)

26 ⚠️  Un viernes no puedes rechazar pedidos
   ✗ at freday night i can't affoard refuse deliverys
   →  ✓ On a Friday night I can't afford to turn down orders.
   (**falta el `to`** — la pieza del molde. `on a Friday`; *deliveries*; *orders* / *turn down*)

27 ⚠️  Se puede permitir un año sin trabajar
   ✗ him family has money, he can afford a whole year without work
   →  ✓ His family has money — he can afford to take a whole year off.
   (*his*; **`-ing` tras preposición** *without working*, 3ª vez; `take time off`)

Bloque: 1 ✅ · 2 ⚠️ · 1 ❌. Entró con `borrow` y salió con el verbo puesto las tres
siguientes. Falta fijar el **`to`**.

### work out  ·  bloqueo  ·  2 ❌ / 1 ✅

28 ✅  Tranquilizas a tu novia con la mudanza
   propuso dos: *it would work out* / *it will end up working out*
   →  ✓ Relax, babe — it'll all work out in the end.
   (`work out` en el sentido de *resolverse*, el más difícil de los tres, y en dos
   moldes. `would` → `will`. La 2ª apila dos modismos en cinco palabras: uno por frase.
   `in the end` ≠ `at the end`)

29 ⚠️  Echaste la cuenta: 8 €/hora con gasolina y esperas
   ✗ i worked out and i earn 8 euros per hour, after oil and waitings
   →  ✓ I worked out that I make eight euros an hour, counting petrol and waiting around.
   (**el molde pide complemento**: `work out **that** / how much`; su `and` lo deja huérfano.
   **falso amigo** *oil* = aceite → *petrol*; *waitings* no existe; *an hour* no *per hour*)

30 ✅  Cogió el trabajo en Madrid y no le salió bien
   ✓ She took the job in Madrid, but it didn't work out — she ended up coming back within six months.
   (**la mejor frase de la sesión**: tres cláusulas, `work out` en negativo y
   **`end up + -ing`** montado solo, otra estructura vencida. Aquí los dos modismos
   **no** estorban —van en cláusulas distintas—, al revés que en el 28.
   *within six months*; *take a job*)

*(4º lanzado y no respondido: Jorge cerró)*

Bloque: 2 ✅ · 1 ⚠️ (cortado)

**Cierre:** 29 micro-ítems respondidos — 1 🌟 · 8 ✅ · 18 ⚠️ · 2 ❌. **La evasión
léxica casi no apareció**: 2 ❌ en 29, y uno de ellos fue un en-blanco por
malentendido, no una esquiva. El único rodeo real fue `borrow` por `afford` (25),
y es el mismo comodín que le tapa `lend`. Lo que se cae es sistemático y no es
vocabulario:

- **`-ing` tras preposición** ×3 — *for get* · *been deal* · *without work*. El
  fallo más repetido del día.
- **`-s` de 3ª persona** ×2 más (*government blame*, *the case rely*), que suma a
  las ×4 del 21-ago. Es lo primero que nota un nativo.
- **el molde a medias**: `afford ~~to~~ refuse` · `work out ~~that~~` · `complain
  against`. Sabe el verbo, le falta la pieza que lo engancha.

Dos ítems dieron la vuelta enteros: **It wasn't until… that…** (entró con 3 ❌ y
salió 2 ✅ / 2 ⚠️) y **deal with** (2 ❌ / 0 ✅ de entrada, salió las cuatro veces y
dos de ellas sin pedírselo). **Jorge auditó dos veces y acertó las dos**: la nota
sobre *don't feel like* en el 16 estaba fuera de lugar y se retiró.

**Esto no baja la cola.** `lend`, `blame`, `deal with`, `rely on`, `afford` y
`work out` siguen listados mañana: salen cuando los acierte **encadenados** en
`/verbs`, y las dos estructuras en `/ingles`.


---

## 2026-08-24 — drill 3

Cola del día: lend · blame · can't be bothered · It wasn't until… that… · deal with · rely on · afford · work out · run out of · claim

*(Tercera sesión del mismo día. Se arrancó por **run out of** y **claim** — los dos
únicos que drill 2 dejó sin tocar — en vez de por la cabecera de la cola, y se
saltó `lend` porque Jorge lo había cerrado por la tarde con «este ya lo tengo muy
visto». El resto se cogió en orden de cola, con contextos nuevos.)*

**Ítems sin tocar hoy — abren la próxima:** rely on · afford · work out · lend.
*(La cola real la imprime `panel/estado.sh` por prioridad y el drill no la puede
reordenar — esto es una nota, no un cambio de orden.)*

### run out of  ·  patrón  ·  3 ⚠️ / 0 ✅

1  ⚠️  Almacén, se acaba la ventana de entrega
   ✗ hurry , we are runing out time  →  ✓ Hurry up, we're running out of time.
   (**falta el `of`**, que es el eje entero. El continuo, bien elegido; *running*)

2  ⚠️  La batería del móvil a mitad de turno
   ✗ i ran out of battery at middle of my shiff
   →  ✓ I ran out of battery halfway through my shift.
   (el ítem **entero bien**, incluido el pasado irregular. Se cae el complemento:
   *at middle of* → `halfway through` / `mid-shift`)

3  ⚠️  Ya se han quedado sin excusas
   ✗ at this ponit , they ran out of excuses  →  ✓ At this point, they've run out of excuses.
   (**present perfect**: disparador ES «ya». Participio `run`, no *ran*.
   `at this point` para *a estas alturas*, muy bien traído)

*(4º lanzado y no respondido: pidió siguiente ítem)*

Bloque: 3 ⚠️ (cortado). El verbo y la preposición salen solos; se cae la pieza de al lado.

### claim  ·  bloqueo  ·  rodeo «the company say that they don't sell the data»

*(Los 4 estímulos se construyeron sobre huecos donde `say` es agramatical:
`claim responsibility` · `claim to be` · `claim to have + participio` ·
`claim + sustantivo`. El bloqueo funcionó: en ninguno apareció *say*.)*

5  ❌  Grupo prorruso se atribuye el ciberataque
   ✗ a pro rusion group argue they was the resposables of the ciber atack
   →  ✓ A pro-Russian group claimed responsibility for the cyberattack.
   (**rodeo con `argue`** = discutir/argumentar, no afirmar sin prueba. Vio que ahí
   no cabía *say* y fue a buscar otro verbo: instinto bueno, verbo malo.
   *the responsables* no existe; *they were*)

6  ⚠️  Vende un curso y dice ser exanalista del CNI
   ✗ he claims he's ex CNI analis  →  ✓ He claims to be a former CNI analyst.
   (**el verbo salió sin pista y con la `-s` puesta**. `claim that + frase` es
   correcto. Falta el artículo: un oficio en singular lleva `a/an`. *ex-CNI*)

7  ⚠️  Sostiene haber borrado la conversación
   ✗ she claims to dalate the chat the same night / she claims that she delated the chat that same night
   →  ✓ She claims to have deleted the chat that same night.
   (**su segunda versión es correcta** y se autocorrigió *the* → *that same night*.
   La primera se cae por el infinitivo: pasado dentro de infinitivo = `to have + participio`)

8  ⚠️  La empresa se atribuye dos millones de usuarios
   ✗ the company claims that they have two millons users
   →  ✓ The company claims two million users.
   (**`million` sin `-s` detrás de un número**. Tercera vez seguida con el verbo
   puesto. El molde corto `claim + sustantivo` es el hueco donde *say* no entra)

Bloque: 1 ❌ · 3 ⚠️. Entró con rodeo y salió con el verbo las tres siguientes.

**Preguntas de Jorge en este bloque** (respondidas sin parar el ritmo):
- auditó el estímulo 5 —*«¿cómo vas a afirmar que fuiste tú sin pruebas?»*—. Aquí
  **no tenía razón** y se le dio el argumento: atribuirse ataques sin prueba es la
  norma en ransomware y hacktivismo (reputación, afiliados, presión), y por eso
  existe la colocación `claim responsibility` + *«the claim has not been verified»*.
- preguntó por `to have + participio`: se le dio la regla (solo tras `claim/seem/
  appear/pretend`, nunca tras preposición) y que **`to had` no existe** — el
  infinitivo es invariable, lo que se mueve es el verbo principal. Se le corrigió
  de paso que **`say` no admite ese molde**, que es justo lo que separa los dos verbos.

### can't be bothered  ·  bloqueo  ·  3 ❌ / 1 ✅

9  ❌  Ni un periodista se leyó el informe entero
   ✗ any jurnalist take the work to read the whole inform
   →  ✓ Not a single journalist could be bothered to read the whole report.
   (**calco**: *take the work to* = tomarse el trabajo de, no existe. Leyó bien el
   matiz —fue a esfuerzo, no a ganas—. `any` no puede ser sujeto afirmativo;
   falso amigo *inform* → `report`)

10 ⚠️  La maleta sin deshacer dos semanas después
   ✗ i keep without un-packed , i can be bothered it
   →  ✓ I still haven't unpacked it — I just can't be bothered.
   (**falta la negación**. Acertó el uso **absoluto**, sin `to + verbo`.
   *keep without* → `still haven't + participio`; sin objeto directo pegado)

11 ⚠️  El del turno de noche no repone las neveras
   ✗ he has enought time, he just can be bothered to do it
   →  ✓ He's got plenty of time — he just can't be bothered to restock them.
   (**la negación otra vez**. El molde entero montado, `just` en su sitio y `can't`
   sin `-s` en tercera. Se le dio el apunte de oído: KANT con la `t` marcada)

12 ⚠️  El paquete que no devolviste el domingo
   ✗ at the end i didn't go , i coundn't be bothered and i leave it
   →  ✓ In the end I didn't go — I couldn't be bothered, so I left it.
   (**la negación volvió**, y en pasado. `at the end` → `in the end`, 2ª vez esta
   semana; *leave* → `left`; `and` → `so`)

Bloque: 1 ❌ · 3 ⚠️. El molde se recupera; **se cayó tres veces por el mismo `can't`**.

### blame  ·  bloqueo  ·  genérico (la nota no era un rodeo usable)

13 ⚠️  El cliente te culpa de que la comida llegara fría
   ✗ he blame me for the food arrive cold  →  ✓ He blamed me for the food arriving cold.
   (`blame sb for sth` ya sale **sin el `to` de más** del 21-ago. Tiempo `blamed`;
   **`-ing` tras preposición**, van 5 esta semana)

14 ✅  Los repartidores cargaron con un fallo del algoritmo
   ✓ They blamed the couriers for a bug in the system.
   (**frase entera correcta**. Resolvió el impersonal español con un `they`
   impersonal, que es la solución nativa, sin irse a una pasiva forzada. Solo
   *couriers* mal escrito)

15 ⚠️  No me eches la culpa de haber perdido el vuelo
   ✗ you can't blame me to have missed the fly  →  ✓ Don't blame me for missing the flight.
   (**`blame` + `for`, nunca `to`** — la preposición de este verbo le baila en los
   dos sentidos. Aplicó el `to have + participio` recién aprendido en un hueco
   donde no cabe: **tras preposición, nunca**. *fly* → `flight`)

*(16 lanzado y no respondido: pidió siguiente ítem)*

Bloque: 1 ✅ · 2 ⚠️ (cortado).

### It wasn't until… that…  ·  bloqueo  ·  3 ❌ / 1 ✅

17 ⚠️  Le bloquean la cuenta de la app y no hay a quién llamar
   ✗ it wans't until they bloked my account that i relized i'm not able to call anyone
   →  ✓ It wasn't until they blocked my account that I realized there was nobody to call.
   (**las dos mitades y el `that` en su sitio**, montado solo. Se le va al presente
   el final: *i'm* → `there was`. Ortografía ×3)

18 ⚠️  Los metadatos delatan que las fotos son de 2014
   ✗ it wasn't until the investigator see the meta-data that he realized the pictures were from 2014
   →  ✓ It wasn't until an investigator checked the metadata that anyone realized the photos were from 2014.
   (molde limpio otra vez. **`see` → `saw`**: detrás del molde va todo en pasado.
   *metadata* junto; artículo `an` en primera mención)

19 ⚠️  Los logs del VPS: llevaban dos semanas dentro
   ✗ it wasn't until i cheked the logs that i relized they have been insade the system two weeks
   →  ✓ It wasn't until I checked the logs that I realized they'd been inside the system for two weeks.
   (**eligió el perfecto continuo**, que es el aspecto correcto, pero un escalón
   arriba: `have been` → **`had been`**. Falta `for` en la duración. Ortografía ×3)

20 ⚠️  «No fue hasta entonces cuando me enteré»
   ✗ it wasn't until now that i realized it  →  ✓ It wasn't until then that I found out.
   (la variante corta, con pronombre en vez de frase — la más difícil de equilibrar
   — y aguantó. `now` → **`then`**; *enterarse* porque te lo cuentan = `find out`.
   *realized* bien escrito tras fallarlo dos veces)

Bloque: 4 ⚠️. **La estructura salió las cuatro veces y ninguna se cayó**: lo que se
rompe está dentro, en el tiempo del segundo trozo, 3 de 4.

### deal with  ·  bloqueo  ·  2 ❌ / 0 ✅

21 ✅  El del asador que te grita, y te toca su zona toda la tarde
   ✓ I've got to deal with him all evening.
   (**`deal with` + persona**, el sentido difícil —donde *solve* y *fix* no caben—,
   a la primera y con la preposición. `the whole evening` también es correcto)

22 ⚠️  Desde marzo con la mutua por la baja
   ✗ i'm dealing with the mutua since march
   →  ✓ I've been dealing with the insurance company since March.
   (verbo y preposición otra vez a la primera, y **el continuo bien elegido**.
   **`since` no va con presente**: pide perfecto → `I've been dealing`.
   *mutua* es español; meses en mayúscula)

*(23 lanzado y no respondido: Jorge cerró)*

Bloque: 1 ✅ · 1 ⚠️ (cortado).

**Cierre:** 20 micro-ítems respondidos — **2 ✅ · 16 ⚠️ · 2 ❌**. La evasión léxica
casi desapareció: **2 rodeos en 20**, y los dos con el instinto correcto detrás
(`argue` buscando un verbo de afirmar; *take the work to* buscando esfuerzo y no
ganas). El ítem se recupera prácticamente siempre. Lo que se cae es **un escalón
por debajo del léxico**:

- **el escalón de tiempo** ×5 — *have been* → `had been` · *since* + presente ·
  *see* → `saw` · *i'm* → `there was` · *ran* → `they've run`. Siempre ve el
  **aspecto** correcto (continuo, perfecto) y falla el **nivel**. No es que no
  sepa el tiempo: es que no retrocede el escalón cuando la frase ya está en pasado.
- **la negación de `can't be bothered`** ×3 — el mismo `can't` caído tres veces
  seguidas, sumado al del 24-ago por la tarde. Es la mitad de la expresión.
- **`-ing` tras preposición** — 5ª y 6ª de la semana (*for the food arrive* ·
  *for to have missed*). Sigue siendo el fallo más repetido del mes.
- **artículos** — *a former analyst* · *an investigator*. Tercera semana.

Dos ítems se comportaron muy distinto: **It wasn't until… that…** salió limpio las
cuatro veces (el molde está fijado; lo que falla es lo que va dentro) y
**deal with** salió a la primera las dos veces, incluido el sentido con persona.

**Esto no baja la cola.** `run out of`, `claim`, `can't be bothered`, `blame`,
`deal with` y `It wasn't until… that…` siguen listados mañana: salen cuando los
acierte **encadenados** en `/verbs`, y las estructuras en `/ingles`.

---

## 2026-09-03 — drill 4

Cola del día: can't be bothered · It wasn't until… that… · lend · be supposed to ·
argue · blame · afford · deal with · rely on · work out · complain · it turns out ·
avoid · come up with · dismiss · mind

*(A petición de Jorge, dos cambios en cómo se escribe la corrección — **no
aplicados a `logica-drill.md`**, que sigue como estaba: (a) el `✓` pasa a ser
**su frase con el arreglo mínimo**, y la versión nativa distinta va aparte en una
línea `Nativo`, porque reescribirle la frase entera en el `✓` le hacía leer «lo
dije todo mal» cuando solo sobraba una palabra; (b) orden de campos `✓` → `~` →
`ES`, para leer la pronunciación pegada a la frase.)*

### can't be bothered · bloqueo · 3 ❌ / 2 ✅

1 ✅  El parte de incidencias a mano, además de la app
   ✓ I can't be bothered to write it twice.
   (molde entero a la primera y **con la negación puesta** — justo la mitad que se
   caía el 24-ago)

2 ⚠️  Ella propone cenar fuera; lo que frena es ducharse y cambiarse
   ✗ i can't be bothered to  go out,
   →  ✓ I can't be bothered to shower and get changed.
   (molde otra vez entero. **Complemento equivocado**: el plan sí apetece; lo que da
   pereza es el esfuerzo previo. `go out` repite además el final de la sesión 3)

3 ⚠️  El vídeo de 2019 con 40.000 RT que nadie comprueba
   ✗ people  can't be bothered to open the link to find out that it's a video from 2019
   →  ✓ People can't be bothered to open the link and find out it's a video from 2019.
   (**tercera persona sin que se caiga nada**. Único fallo real: `to` → `and`; dos
   infinitivos seguidos se leen como finalidad, y aquí no abren el enlace)

4 ✅  Los platos de anoche en el fregadero
   ✗ i could't be bothered to do the dishes
   →  ✓ I couldn't be bothered to do the dishes.
   (**retrocedió el escalón de tiempo solo**: `couldn't`, no `can't`. Solo ortografía)

Bloque: 2 ✅ · 2 ⚠️. El molde no se cayó ninguna de las cuatro, ni en 3ª persona ni en pasado.

### be supposed to · bloqueo · 2 ❌ / 0 ✅

5 ✅  Cena en casa de la cuñada; son las nueve y sigue jugando
   ✗ i was supposed to be ready at 9  but i'm playing video games
   →  ✓ I was supposed to be ready at nine and I'm still playing video games.
   (molde entero **y en pasado**, que es lo que marca el acuerdo previo. Solo la `i`)

6 ⚠️  El pedido tenía que estar entregado antes de las dos
   ✗ it was suposed to be delivered before 2 o'clock , right now it's 2:40   i'm still  getting  it in my bag
   →  ✓ It was supposed to be delivered before two o'clock. Right now it's 2:40 and I've still got it in my bag.
   (**montó el molde en pasiva**, `was supposed to be delivered`, y no lo había hecho
   nunca. `getting` = conseguir, no llevar encima. Ortografía + coma splice)

7 ⚠️  El informe de transparencia que iba a salir en marzo
   ✗ it was supposed to  be ready in march  and we are in  september  and the report still  emty
   →  ✓ It was supposed to be ready in March, and it's September and the report is still empty.
   (pasiva otra vez, ya sin ayuda. **Cae el verbo `to be`**: `the report is still empty`.
   *we are in September* → `it's September`. Meses en minúscula, `empty`)

*(8 lanzado y no respondido: pidió pasar de ítem)*

Bloque: 1 ✅ · 2 ⚠️ (cortado). **La pasiva apareció dos veces y es nueva.**

### It wasn't until… that… · bloqueo · 3 ❌ / 2 ✅

9 ❌  Discutieron el domingo; el miércoles ella lo saca y ahí cae
   ✗ i ralized she still mad at me in the dinner
   →  ✓ It wasn't until she brought it up again at dinner that I realized she was still mad at me.
   (contó el hecho, sin estructura. **Fallo del estímulo, no suyo**: *I realized… at
   dinner* es una salida perfectamente natural, así que el contexto no bloqueaba nada.
   Los tres siguientes llevaron una coleta semántica —«subraya lo tarde que fue»— y
   entonces sí salió. `mad at` + `still` bien colocados; falta `was`; `at dinner`)

10 ⚠️  Media hora dando vueltas y la etiqueta era de otro barrio
   ✗ i wasn't until get the portal and i saw  the tiket  that i undertand the  adress was in another neiborhood
   →  ✓ It wasn't until I got to the building and looked at the label that I understood the address was in another neighbourhood.
   (molde entero **con dos acciones dentro del primer trozo**. `I wasn't` → `It wasn't`;
   `get` → `got to`; `undertand` → `understood`. `portal` es falso amigo)

11 ⚠️  El contrato de dos años y los nombres de los socios
   ✗ it wasn't until the newspaper post the  parnes names that they opened the investigation
   →  ✓ It wasn't until a newspaper published the partners' names that they opened the investigation.
   (`It wasn't until` corregido solo respecto al 10, y **el segundo trozo en pasado**.
   Falla el primero: `post` → `published`. Genitivo plural `partners'`)

12 ✅  La factura del móvil que ella llevaba ocho meses sin pagar
   ✗ It wasn't until  they cut my line that i realized she wasn't paying it
   →  ✓ It wasn't until they cut me off that I realized she hadn't been paying it.
   (**frase entera sola y sin un tropiezo en el molde**, los dos lados en pasado.
   `wasn't paying` no es error; `hadn't been paying` solo sube el nivel. Solo la `i`)

Bloque: 1 ✅ · 2 ⚠️ · 1 ❌. El molde salió 3 de 4 y limpio en la última.

### lend · bloqueo · 3 ❌ / 2 ✅ · sustituto «i borrowed mine»

13 ⚠️  El compañero al 2% y la batería externa todo el turno
    ✗ my workmate ran out of battery then i lent him my power bank the  whole shift
    →  ✓ My workmate ran out of battery, so I lent him my power bank for the whole shift.
    (**`lent` irregular bien y doble objeto en el orden inglés**. `ran out of battery`
    es de nativo. `then` → `so`; falta `for` en la duración)

14 ⚠️  La furgoneta al hermano para la mudanza
    ✗ you can take my car, no worrys about it,  i'll lend you
    →  ✓ You can take my van — don't worry about it, I'll lend it to you on Saturday.
    (`'ll` bien elegido para decisión del momento. **`lend` sin objeto**: `I'll lend you`
    no dice nada. `no worrys` → `don't worry`. Furgoneta es `van`)

15 ⚠️  Los 300 € de enero que no ha visto
    ✗ ohh man . i already lent 300 euros to you,  when you  goint to pay me back  ??
    →  ✓ Oh man, I already lent you 300 euros — when are you going to pay me back?
    (el otro molde válido, `lent … to you`, **y `pay me back` que no se le ha dado
    nunca**. Falta el auxiliar `are` en la pregunta)

*(16 lanzado y no respondido: pidió pasar de ítem)*

Bloque: 3 ⚠️ (cortado). **Ni un solo `borrow`: el bloqueo por construcción funcionó
las tres veces.**

### argue · bloqueo · 2 ❌ / 1 ✅

16 ❌  El economista que defiende con datos que el SMI no destruyó empleo
    ✗ he claims that pay better salaries are good for the economy
    →  ✓ He argues that raising the minimum wage didn't destroy jobs.
    (fue a la **familia correcta** —verbo de afirmar, con `that` + frase— pero cogió
    `claim`, que es afirmar sin respaldo. Sujeto en `-ing` y concordancia: `paying… is`)

17 ⚠️  Ella quiere el pueblo; él defiende que sale más caro
    ✗ i'm going to argue that it would be expencier because you didn't work out the money from car and  gasoi
    →  ✓ I'd argue it would be more expensive, because you haven't worked out the cost of the car and the diesel.
    (`argue` en el sentido bueno **y le salió `work out` solo**, otro ítem de la cola,
    bien usado. `expencier` no existe → `more expensive`. `didn't` → `haven't`)

*(18 lanzado tres veces y no respondido: se abrió una conversación sobre
`I'd argue` / `I'd say` / `I'm going to argue` y después cerró)*

Bloque: 1 ⚠️ · 1 ❌ (cortado).

**Cierre:** 16 micro-ítems respondidos — **4 ✅ · 10 ⚠️ · 2 ❌**. Solo **1 rodeo real**
(el 9, y con estímulo defectuoso) y **1 verbo vecino** (`claim` por `argue`): la
evasión léxica ya casi no aparece. El ítem se recupera prácticamente siempre —
`can't be bothered` 4/4, `It wasn't until` 3/4, `lend` 3/3, `be supposed to` 3/3.

Lo que se cae está **un escalón por debajo del ítem**, y hoy fue casi todo lo mismo:

- **la palabra funcional que falta** ×6 — `for` the whole shift · `lend` sin objeto ·
  `are` you going to · the report **is** empty · she **was** still mad · `to` the
  building. Nunca falla el verbo: falla la pieza pequeña que lo sujeta.
- **el escalón de tiempo** ×3 — `post` → `published` · `undertand` → `understood` ·
  `didn't work out` → `haven't`. Igual que el 24-ago: ve el aspecto, falla el nivel.
- **la `i` de yo en minúscula** ×5 — nuevo esta sesión, en cinco frases distintas.
- **ortografía** — `suposed` · `emty` · `adress` · `tiket` · `neiborhood` · `worrys` ·
  `expencier` · `goint`. Vocales por oído.

Dos cosas nuevas y buenas: **la pasiva de `be supposed to`** (`was supposed to be
delivered`), montada dos veces sin que nadie se la enseñara, y **`work out` y
`pay me back` apareciendo solos** dentro de frases de otro ítem — que es
exactamente la señal de encadenado que el drill no puede puntuar.

**Esto no baja la cola.** `can't be bothered`, `be supposed to`, `It wasn't until…
that…`, `lend` y `argue` siguen listados mañana: salen cuando los acierte
**encadenados** en `/verbs` (los verbos) y en `/ingles` (las estructuras).
