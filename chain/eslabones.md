# Banco de eslabones

Conectores y bisagras para encadenar ideas, agrupados por **función**. La clave
de cada eslabón (columna `ID`) es el identificador que se usa en
`progreso-chain.md` y en `log-chain.md`. Escribirla siempre igual.

**No se lee entero nunca.** Se saca con `grep` solo lo que hace falta:

```bash
grep '| CTR-' chain/eslabones.md          # todos los de contraste
grep -E '\| (C1|B2) \|' chain/eslabones.md # solo los de nivel alto
grep 'REF-04' chain/eslabones.md           # uno concreto
```

**Niveles.** `B1` = muleta: ya le salen solos, no suman casi nada a la nota.
`B2` = objetivo de trabajo. `C1` = lo que de verdad sube el registro.
La nota de nivel (§4 de `logica-chain.md`) cuenta B2 y C1 como "B2+".

**Funciones:** `RAZ` razón · `CTR` contraste · `RES` resultado · `REF`
reflexión/matiz · `EJE` ejemplo · `ADI` adición · `CND` condición · `TMP`
tiempo/secuencia · `CIE` cierre

**⇄** marca los que también existen como estructura en el banco del otro
ejercicio (`estructuras/banco-estructuras.md`). Es **solo informativo**: aquí se practica el
encadenado, allí la precisión, y los progresos van por separado a propósito.

---

## RAZ — razón

| ID | Eslabón | Nivel | ES | ⇄ |
|---|---|---|---|---|
| RAZ-01 | because | B1 | porque | |
| RAZ-02 | since | B2 | ya que | |
| RAZ-03 | as | B2 | como / puesto que | |
| RAZ-04 | seeing as | C1 | visto que / total, que | |
| RAZ-05 | given that | C1 | dado que | |
| RAZ-06 | the thing is | B2 | lo que pasa es que | ⇄ |
| RAZ-07 | that's because | B2 | eso es porque | |
| RAZ-08 | considering (that) | C1 | teniendo en cuenta que | |
| RAZ-09 | which is down to | C1 | lo cual se debe a | |

## CTR — contraste

| ID | Eslabón | Nivel | ES | ⇄ |
|---|---|---|---|---|
| CTR-01 | but | B1 | pero | |
| CTR-02 | although | B2 | aunque | |
| CTR-03 | even though | B2 | aunque (real) | ⇄ |
| CTR-04 | …, though (al final) | B2 | …, eso sí | |
| CTR-05 | that said / having said that | C1 | dicho esto | ⇄ |
| CTR-06 | then again | C1 | aunque bien pensado | ⇄ |
| CTR-07 | mind you | C1 | ojo, que… | |
| CTR-08 | whereas | C1 | mientras que | |
| CTR-09 | on the other hand | B2 | por otro lado | |
| CTR-10 | to be fair | B2 | todo hay que decirlo | ⇄ |
| CTR-11 | it's not like… | B2 | tampoco es que… | ⇄ |
| CTR-12 | no matter how… | C1 | por mucho que… | ⇄ |
| CTR-13 | if anything, it's… | C1 | si acaso, es… | |

## RES — resultado

| ID | Eslabón | Nivel | ES | ⇄ |
|---|---|---|---|---|
| RES-01 | so | B1 | así que | |
| RES-02 | which means | B2 | lo cual significa que | |
| RES-03 | that's why | B2 | por eso | |
| RES-04 | which is why | C1 | y por eso (relativo) | ⇄ |
| RES-05 | as a result | B2 | como resultado | |
| RES-06 | so basically | B2 | o sea, que | |
| RES-07 | and I end up + -ing | B2 | y acabo haciendo | ⇄ |
| RES-08 | to the point where | C1 | hasta el punto de que | |
| RES-09 | which leaves me + -ing | C1 | lo cual me deja | |
| RES-10 | otherwise | B2 | si no, … | ⇄ |

## REF — reflexión / matiz

| ID | Eslabón | Nivel | ES | ⇄ |
|---|---|---|---|---|
| REF-01 | actually | B1 | en realidad | |
| REF-02 | to be honest | B2 | la verdad es que | |
| REF-03 | in fact | B2 | de hecho | |
| REF-04 | I mean | B2 | o sea / quiero decir | |
| REF-05 | if anything | C1 | si acaso | |
| REF-06 | deep down | C1 | en el fondo | |
| REF-07 | come to think of it | C1 | ahora que lo pienso | |
| REF-08 | the way I see it | C1 | yo lo veo así | ⇄ |
| REF-09 | when you think about it | C1 | si lo piensas | |
| REF-10 | I guess / I suppose | B2 | supongo que | |
| REF-11 | it's not that…, it's just that… | C1 | no es que…, es que… | ⇄ |
| REF-12 | let's be honest | B2 | seamos sinceros | |

## EJE — ejemplo

| ID | Eslabón | Nivel | ES | ⇄ |
|---|---|---|---|---|
| EJE-01 | for example | B1 | por ejemplo | |
| EJE-02 | for instance | B2 | por ejemplo (formal) | |
| EJE-03 | like when… | B2 | como cuando… | |
| EJE-04 | say, if… | C1 | pongamos que… | |
| EJE-05 | take X, for example | C1 | mira X, por ejemplo | |
| EJE-06 | such as | B2 | tal como | |
| EJE-07 | the other day, … | B2 | el otro día, … | |

## ADI — adición / escalada

| ID | Eslabón | Nivel | ES | ⇄ |
|---|---|---|---|---|
| ADI-01 | and | B1 | y | |
| ADI-02 | also / as well | B1 | también | |
| ADI-03 | plus | B2 | y encima | |
| ADI-04 | on top of that | B2 | por si fuera poco | ⇄ |
| ADI-05 | not to mention | C1 | por no hablar de | ⇄ |
| ADI-06 | what's more | C1 | es más | |
| ADI-07 | let alone | C1 | y mucho menos | ⇄ |
| ADI-08 | besides | B2 | además (defensivo) | |
| ADI-09 | the more…, the more… | C1 | cuanto más…, más… | ⇄ |

## CND — condición

| ID | Eslabón | Nivel | ES | ⇄ |
|---|---|---|---|---|
| CND-01 | if | B1 | si | |
| CND-02 | unless | B2 | a menos que | ⇄ |
| CND-03 | as long as | B2 | siempre y cuando | ⇄ |
| CND-04 | provided that | C1 | siempre que | |
| CND-05 | in case | B2 | por si acaso | |
| CND-06 | whether or not | C1 | tanto si… como si no | |
| CND-07 | if it weren't for | C1 | si no fuera por | ⇄ |

## TMP — tiempo / secuencia

| ID | Eslabón | Nivel | ES | ⇄ |
|---|---|---|---|---|
| TMP-01 | and then | B1 | y luego | |
| TMP-02 | at first…, but then… | B2 | al principio…, pero luego… | ⇄ |
| TMP-03 | by the time | B2 | para cuando | ⇄ |
| TMP-04 | until | B2 | hasta que | |
| TMP-05 | ever since | C1 | desde que | |
| TMP-06 | these days | B2 | últimamente | |
| TMP-07 | whenever | B2 | siempre que | |
| TMP-08 | once | C1 | una vez que | |
| TMP-09 | the moment (that) | C1 | en cuanto | |
| TMP-10 | meanwhile | B2 | mientras tanto | |

## CIE — cierre

| ID | Eslabón | Nivel | ES | ⇄ |
|---|---|---|---|---|
| CIE-01 | in the end | B2 | al final | |
| CIE-02 | all in all | C1 | en resumidas cuentas | ⇄ |
| CIE-03 | at the end of the day | C1 | a fin de cuentas | |
| CIE-04 | either way | C1 | de una forma u otra | |
| CIE-05 | so yeah | B2 | pues eso | |
| CIE-06 | but hey | B2 | pero bueno | |
| CIE-07 | which is fine by me | C1 | y por mí perfecto | |
