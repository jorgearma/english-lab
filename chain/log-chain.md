# Log de sesiones — Chain (conectores por registro)

Registro crudo de cada sesión. Solo se **añade al final**, nunca se edita lo
anterior: sirve para ver la evolución real y detectar en qué registro o función
se atasca.

> **Nota:** el ejercicio se remodeló el 2026-09-11 (de «encadenar ideas sin
> parar» a «fijación y selección de conectores por registro con SRS», ver
> `PLAN-REMODELACION.md`). Las 2 sesiones del ejercicio viejo (v1, formato de
> cadenas) quedan en el historial de git, no aquí.

Formato de una entrada (espeja `verbos/log-verbos.md`):

```
## AAAA-MM-DD — sesión N · EXAMEN

**Ronda:** <cuántos vencidos / nuevos / de control, en una línea>

**Resultado:** N ✅ · N ⚠️ · N ❌ · N muletas · NN% natural en A · sobre 15

**Lo que ha cambiado / lo que no:** <2-3 líneas>

### Los 15 ítems

1  ✅  because  ·  RAZ · neutro · B1              [B · traduce entera]
      ES  …
      ✗  …
      ✓  …
      ~  …
      ✔ bien:  …
      ⚙ …

### TOP 5 Weak Connectors

1  ❌  as a result   As a result of the breakdown, your order has been delayed.
                     muleta: "so" en un email formal — registro que no pega
```

---

## 2026-09-11 — sesión 1 · EXAMEN

**Ronda:** 0 vencidos / 8 nuevos ⚪ / 0 de control (primera sesión del formato remodelado; sin tope de nuevos porque todo era nuevo). Todo N1, todo formato B.

**Resultado:** 1 🌟 · 6 ✅ · 0 ⚠️ · 1 ❌ · 1 muleta · 88% natural · sobre 8 · BIEN 🟢
(Nota media con escala 🌟10 · ✅8 · ⚠️5 · ❌2 = 7.5. % B2+: los 8 ítems del banco son B2.)

**Lo que ha cambiado / lo que no:** Selección y registro salen bien a la primera: los 7 conectores acertados salieron sin muleta y en su tono (coloquial con "the thing is", "like when", "plus", "but to be fair"; formal con "as a result"). El único ❌ no es de registro sino un calco fonético del español: "a menos que" → "at least" en lugar de "unless". Donde se le cae la frase es en el **contorno de la subordinada**, no en el conector: preposición (in/on the bike), tiempo (was late / has been delayed), verbo (upload/update), objeto pegado (advise the supplier, no "advise to").

### Los 8 ítems

1  ✅  the thing is  ·  RAZ · coloquial · N1        [B · traduce entera]
   ✅  like when  ·  EJE · coloquial · N1
      ES  Lo que pasa es que estoy reventado, como cuando hago doble turno en la bici.
      ✗  the thing is i'm really tired like when i have dobble shift in the bike
      ✓  The thing is, I'm really tired, like when I have a double shift on the bike.
      ~  dha THING-iz, aim RI-li TAI-ard, laik-UEN ai hav-a DA-bol SHIFT on-dha BAIK
      ✔ bien:  los dos conectores solos y en registro; coma tras "the thing is".
      ⚙ in the bike → ON the bike (bici, bus, tren = on; coche = in).
      +  reventado entre colegas = knackered / wrecked.

2  ✅  even though  ·  CTR · neutro/formal · N1     [B · traduce entera]
   ✅  as a result  ·  RES · formal · N1
      ES  Aunque avisamos al proveedor a tiempo, el material no llegó y, como consecuencia, su pedido se ha retrasado.
      ✗  even though we advise to the "provedor" on time. the material didn't arrive as a resoult your order was late
      ✓  Even though we advised the supplier on time, the material didn't arrive and, as a result, your order has been delayed.
      ~  IV-en-dhou ui ad-VAIZD dha sa-PLAI-er on-TAIM, dha ma-TI-rial DID-ent a-RAIV and, az-a-ri-ZALT, ior OR-der haz-BIN di-LEID
      ✔ bien:  "as a result" en email formal es el registro justo; "advise" sin "to" (formal UK = informar) vale.
      ✘ mal:   provedor → supplier; "advise TO the" → advised the supplier (objeto pegado).
      ⚙ was late → has been delayed: "se ha retrasado" y sigue así = present perfect; "delayed" es palabra de email, "late" de bar.
      +  el punto tras "on time" deja "even though…" colgando; en escrito, coma.

3  ✅  until  ·  TMP · neutro · N1                   [B · traduce entera]
   ❌  unless  ·  CND · neutro · N1   ~ at least
      ES  No voy a abrir el puerto hasta que actualice el servidor, a menos que me lo pidas tú.
      ✗  I won't open the port until the server upload at lest you request me to do it
      ✓  I won't open the port until I update the server, unless you ask me to.
      ~  ai UOUNT OU-pen dha PORT an-TIL ai ap-DEIT dha SER-ver, an-LES iu ASK-mi tu
      ✔ bien:  "until" solo y en su sitio; "I won't open" es el futuro negativo justo.
      ✘ mal:   "at least" = al menos, no "a menos que". Como inglés la frase NO se salva: dice otra cosa. a menos que = UNLESS.
      ⚙ until the server upload → until I update the server: upload = subir fichero, update = actualizar; y "until" pide sujeto + verbo detrás.
      +  request me to do it = registro de carta; a la pareja, "unless you ask me to".

4  ✅  plus  ·  ADI · coloquial · N1                 [B · traduce entera]
   🌟  to be fair  ·  CTR · coloquial · N1
      ES  Pagan fatal y encima te hacen currar los domingos. Todo hay que decirlo, el jefe es majo.
      ✗  they don't pay well plus you have to work sundays but to be fair the boss is a good guy
      ✓  They don't pay well, plus you have to work Sundays. But to be fair, the boss is a good guy.
      ~  dhei DOUNT pei UEL, plas iu HAV-tu UERK SAN-deiz. bat tu-bi-FER, dha BOS iz-a GUD GAI
      ✔ bien:  "but to be fair" con el "but" delante es exactamente lo que dice un nativo al conceder; "a good guy" clava "majo".
      +  "pagan fatal" es más fuerte que "don't pay well": "the pay's terrible / the pay's crap".

### TOP 5 Weak Connectors

1  ❌  unless        I won't open the port until I update the server, unless you ask me to.
                     ~ an-LES · muleta: "at least" — calco fonético de "a menos que"; no es registro, es léxico.
2  ✅  until         …until I update the server…
                     ~ an-TIL · conector bien; la subordinada llegó sin verbo ("the server upload").
3  ✅  as a result   …and, as a result, your order has been delayed.
                     ~ az-a-ri-ZALT · conector bien; tiempo de la frase (was late) fuera del registro de email.
4  ✅  even though   Even though we advised the supplier on time, …
                     ~ IV-en-dhou · conector bien; "advise to the provedor" en la subordinada.
5  ✅  like when     …like when I have a double shift on the bike.
                     ~ laik-UEN · conector bien; "in the bike".

**Patrón de evasión:** hoy no hay evasión de registro (ni "so" por "as a result", ni "because" por "the thing is"). El fallo único es un falso amigo fonético (at least ≠ unless). Lo que se rompe es el contorno de la cláusula que cuelga del conector: preposición, tiempo y verbo. Vigilar en refuerzo si "unless" sale sin "at least".
