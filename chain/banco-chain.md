# Banco de conectores por registro

Cada fila es **un conector en un nicho de registro** (`formal` · `neutro` ·
`coloquial`). La clave estable es el `ID` (`RAZ-05`): lo referencian
`progreso-chain.md`, `log-chain.md` y `panel/cierre.sh`. **Datos, no lógica** —
el método vive en `logica-chain.md`.

**No se lee entero nunca.** Se saca con `grep` solo lo que hace falta:

```bash
grep '| RAZ-' chain/banco-chain.md          # todos los de razón
grep 'CTR-03' chain/banco-chain.md          # uno concreto
```

**Las columnas.**

| Columna | Para qué |
|---|---|
| `ID` | clave estable, no cambiar nunca |
| `Conector` | el conector en inglés |
| `Fn` | función (RAZ/CTR/…) — informativo, **ya no es la pista** |
| `Registro` | `formal` · `neutro` · `coloquial` (la capa que decide el nicho) |
| `Disparador ES` | la expresión española **del registro real de Jorge** para el ítem B — no la de diccionario |
| `SIT` | semilla del contexto **en inglés** para el ítem A (registro marcado por el canal/interlocutor) |
| `Nivel` | B1 / B2 / C1 |

**El `Disparador ES` no es la traducción de diccionario.** `so basically` no es
«o sea, que» (eso arrastra consecuencia); es «vamos, que… / total, que…». Una
etiqueta perezosa fija el conector con el matiz equivocado.

**Funciones:** `RAZ` razón · `CTR` contraste · `RES` resultado · `REF`
reflexión/matiz · `EJE` ejemplo · `ADI` adición · `CND` condición · `TMP`
tiempo/secuencia · `CIE` cierre.

**Cómo crece:** de los **más usados a los menos usados** (`logica-chain.md` §8).
Los de «Pendientes» se afinan (`Registro`, `Disparador ES`, `SIT`) y se suben a
«Incorporados» al meterlos en el progreso. Un conector con dos nichos son **dos
filas** con dos IDs.

---

## Incorporados

Los que están en `progreso-chain.md` y entran en la ronda.

### RAZ — razón

| ID | Conector | Fn | Registro | Disparador ES | SIT | Nivel |
|---|---|---|---|---|---|---|
| RAZ-01 | because | RAZ | neutro | porque | Telling a mate why you were late this morning. | B1 |
| RAZ-02 | since | RAZ | neutro | como / ya que | Message to a coworker: they're already at the office, ask them to do one thing while there. | B2 |
| RAZ-06 | the thing is | RAZ | coloquial | lo que pasa es que | Backing out of weekend plans with a friend; soften the real reason. | B2 |

### CTR — contraste

| ID | Conector | Fn | Registro | Disparador ES | SIT | Nivel |
|---|---|---|---|---|---|---|
| CTR-01 | but | CTR | neutro | pero | Two things you feel about your job at once. | B1 |
| CTR-03 | even though | CTR | neutro | aunque (real, ya pasó) | You kept doing deliveries all shift despite the storm. | B2 |
| CTR-10 | to be fair | CTR | coloquial | todo hay que decirlo | You're slagging off a client, then you concede one point in their favour. | B2 |

### RES — resultado

| ID | Conector | Fn | Registro | Disparador ES | SIT | Nivel |
|---|---|---|---|---|---|---|
| RES-01 | so | RES | neutro | así que | Your phone died mid-shift; say what you did next, to a mate. | B1 |
| RES-03 | that's why | RES | neutro | por eso | Explaining to your partner why you always charge the bike at night. | B2 |
| RES-05 | as a result | RES | formal | como consecuencia | Formal client email: a supplier failed, and the order is now late. | B2 |

### REF — reflexión / matiz

| ID | Conector | Fn | Registro | Disparador ES | SIT | Nivel |
|---|---|---|---|---|---|---|
| REF-01 | actually | REF | neutro | en realidad / la verdad | Someone assumed something wrong about your work; correct them. | B1 |
| REF-02 | to be honest | REF | coloquial | la verdad es que | A friend asks if you like couriering; give your honest take. | B2 |
| REF-04 | I mean | REF | coloquial | o sea / quiero decir | You said something ambiguous and are now rephrasing it. | B2 |

### EJE — ejemplo

| ID | Conector | Fn | Registro | Disparador ES | SIT | Nivel |
|---|---|---|---|---|---|---|
| EJE-01 | for example | EJE | neutro | por ejemplo | Backing up a claim about your city with one concrete case. | B1 |
| EJE-03 | like when | EJE | coloquial | como cuando… | Illustrating a point to a friend with a real thing that happened. | B2 |

### ADI — adición

| ID | Conector | Fn | Registro | Disparador ES | SIT | Nivel |
|---|---|---|---|---|---|---|
| ADI-01 | and | ADI | neutro | y | Listing two things you did today. | B1 |
| ADI-02 | also / as well | ADI | neutro | también | Adding a second reason you like something. | B1 |
| ADI-03 | plus | ADI | coloquial | y encima | Piling on reasons to a mate why a job is bad. | B2 |
| ADI-08 | besides | ADI | neutro | además (a la defensiva) | Defending a decision with one extra reason. | B2 |

### CND — condición

| ID | Conector | Fn | Registro | Disparador ES | SIT | Nivel |
|---|---|---|---|---|---|---|
| CND-01 | if | CND | neutro | si | A plain condition about the weekend. | B1 |
| CND-02 | unless | CND | neutro | a menos que | Warning a mate they'll miss out unless they act. | B2 |

### TMP — tiempo / secuencia

| ID | Conector | Fn | Registro | Disparador ES | SIT | Nivel |
|---|---|---|---|---|---|---|
| TMP-01 | and then | TMP | neutro | y luego | Telling a mate the next thing that happened. | B1 |
| TMP-04 | until | TMP | neutro | hasta que | Saying how long you kept doing something. | B2 |

### CIE — cierre

| ID | Conector | Fn | Registro | Disparador ES | SIT | Nivel |
|---|---|---|---|---|---|---|
| CIE-01 | in the end | CIE | neutro | al final | Wrapping up a story about your day. | B2 |
| CIE-05 | so yeah | CIE | coloquial | pues eso | Closing off a rant casually, to a friend. | B2 |

---

## Pendientes de incorporar

Aún fuera del progreso. Se suben por frecuencia de uso. El `Registro` y el `ES`
aquí son **tentativos**: se afinan al incorporar (`logica-chain.md` §8).

| ID | Conector | Fn | Registro | ES tentativo |
|---|---|---|---|---|
| RAZ-03 | as | RAZ | neutro | como / puesto que |
| RAZ-04 | seeing as | RAZ | coloquial | visto que / total, que |
| RAZ-05 | given that | RAZ | formal | dado que |
| RAZ-07 | that's because | RAZ | neutro | eso es porque |
| RAZ-08 | considering (that) | RAZ | formal | teniendo en cuenta que |
| RAZ-09 | which is down to | RAZ | formal | lo cual se debe a |
| CTR-02 | although | CTR | neutro | aunque |
| CTR-04 | …, though (al final) | CTR | coloquial | …, eso sí |
| CTR-05 | that said / having said that | CTR | formal | dicho esto |
| CTR-06 | then again | CTR | coloquial | aunque bien pensado |
| CTR-07 | mind you | CTR | coloquial | ojo, que… |
| CTR-08 | whereas | CTR | formal | mientras que |
| CTR-09 | on the other hand | CTR | neutro | por otro lado |
| CTR-11 | it's not like… | CTR | coloquial | tampoco es que… |
| CTR-12 | no matter how… | CTR | neutro | por mucho que… |
| CTR-13 | if anything, it's… | CTR | coloquial | si acaso, es… |
| RES-02 | which means | RES | neutro | lo cual significa que |
| RES-04 | which is why | RES | neutro | y por eso (relativo) |
| RES-06 | so basically | RES | coloquial | vamos, que… / total, que… |
| RES-07 | and I end up + -ing | RES | coloquial | y acabo haciendo |
| RES-08 | to the point where | RES | neutro | hasta el punto de que |
| RES-09 | which leaves me + -ing | RES | formal | lo cual me deja |
| RES-10 | otherwise | RES | neutro | si no, … |
| REF-03 | in fact | REF | neutro | de hecho |
| REF-05 | if anything | REF | coloquial | si acaso |
| REF-06 | deep down | REF | neutro | en el fondo |
| REF-07 | come to think of it | REF | coloquial | ahora que lo pienso |
| REF-08 | the way I see it | REF | neutro | yo lo veo así |
| REF-09 | when you think about it | REF | coloquial | si lo piensas |
| REF-10 | I guess / I suppose | REF | coloquial | supongo que |
| REF-11 | it's not that…, it's just that… | REF | neutro | no es que…, es que… |
| REF-12 | let's be honest | REF | coloquial | seamos sinceros |
| EJE-02 | for instance | EJE | formal | por ejemplo (formal) |
| EJE-04 | say, if… | EJE | coloquial | pongamos que… |
| EJE-05 | take X, for example | EJE | neutro | mira X, por ejemplo |
| EJE-06 | such as | EJE | formal | tal como |
| EJE-07 | the other day, … | EJE | coloquial | el otro día, … |
| ADI-04 | on top of that | ADI | coloquial | por si fuera poco |
| ADI-05 | not to mention | ADI | neutro | por no hablar de |
| ADI-06 | what's more | ADI | formal | es más |
| ADI-07 | let alone | ADI | coloquial | y mucho menos |
| ADI-09 | the more…, the more… | ADI | neutro | cuanto más…, más… |
| CND-03 | as long as | CND | neutro | siempre y cuando |
| CND-04 | provided that | CND | formal | siempre que |
| CND-05 | in case | CND | neutro | por si acaso |
| CND-06 | whether or not | CND | formal | tanto si… como si no |
| CND-07 | if it weren't for | CND | neutro | si no fuera por |
| TMP-02 | at first…, but then… | TMP | neutro | al principio…, pero luego… |
| TMP-03 | by the time | TMP | neutro | para cuando |
| TMP-05 | ever since | TMP | neutro | desde que |
| TMP-06 | these days | TMP | coloquial | últimamente |
| TMP-07 | whenever | TMP | neutro | siempre que |
| TMP-08 | once | TMP | neutro | una vez que |
| TMP-09 | the moment (that) | TMP | neutro | en cuanto |
| TMP-10 | meanwhile | TMP | formal | mientras tanto |
| CIE-02 | all in all | CIE | neutro | en resumidas cuentas |
| CIE-03 | at the end of the day | CIE | coloquial | a fin de cuentas |
| CIE-04 | either way | CIE | neutro | de una forma u otra |
| CIE-06 | but hey | CIE | coloquial | pero bueno |
| CIE-07 | which is fine by me | CIE | coloquial | y por mí perfecto |
