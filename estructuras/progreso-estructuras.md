# Progreso

Estado de cada estructura. Fuente de verdad para armar la ronda (`logica-estructuras.md` §6).
Estados: ⚪ nueva · 🔴 fallando · 🟡 en progreso · ✅ interiorizada.
Próxima revisión vencida (≤ hoy) = entra en la ronda.

**Una columna por nota** (`logica-estructuras.md` §5): `Bien` ← ✅/🌟 ·
`Regular` ← ⚠️ · `Mal` ← ❌. De ahí sale el invariante que valida la tabla:

```
Bien + Regular + Mal  =  Veces vista        en las 81 filas, siempre
```

**La columna `Nativas`** cuenta los 🌟 y es un **subconjunto de `Bien`**: un 🌟
suma en las dos (`Nativas` ≤ `Bien`, siempre). **No cambia el intervalo** — un
🌟 sube un peldaño, exactamente igual que un ✅, nunca dos. Solo sirve para
saber **qué te sale ya nativo**: una estructura con 2-3 🌟 no necesita el mismo
trato que una que aprueba raspando, y eso lo decide el coach al armar la ronda,
no el SRS.

**La columna `Esquiva`** guarda lo que Jorge dijo **en lugar de** la estructura
(`logica-estructuras.md` §2). Es el campo de diagnóstico: no mide la tasa de
fallo, mide el **patrón de evasión**, que es distinto y más útil — una
estructura que se esquiva tres sesiones seguidas con el mismo sinónimo seguro no
es un olvido, es una salida fácil que hay que bloquear al construir la frase ES.
Misma idea que `Sustituto` en `verbos/progreso-verbos.md`. La escribe
`panel/cierre.sh` con la sintaxis `nombre ~ lo que dijo`; `~ —` la limpia.

Si una fila no cumple eso, un cierre se escribió mal. Comprobación:

```bash
awk -F'|' 'function t(s){gsub(/^ +| +$/,"",s); return s}
  /^\|/ && !ok { for(i=2;i<NF;i++) if(t($i)!="") I[t($i)]=i
                 if("Veces vista" in I){ ok=1
                   K=I["Estructura"]; V=I["Veces vista"]
                   B=I["Bien"]; R=I["Regular"]; M=I["Mal"]; N=I["Nativas"] } next }
  ok && /^\|/ && t($V) ~ /^[0-9]+$/ {
    if (t($B)+t($R)+t($M) != t($V)) print "DESCUADRE:", t($K)
    if (t($N)+0 > t($B)+0)          print "MÁS 🌟 QUE ACIERTOS:", t($K) }' \
    estructuras/progreso-estructuras.md
```

| Estructura | Veces vista | Bien | Regular | Mal | Estado | Últ. | Próxima revisión | Esquiva | Nativas |
|---|---|---|---|---|---|---|---|---|---|
| would have + past participle | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| can't be bothered | 7 | 3 | 1 | 3 | ✅ | 2026-09-03 | 2026-09-11 | — | 1 |
| it turns out (that) | 6 | 2 | 3 | 1 | 🟡 | 2026-09-03 | 2026-09-05 | — | 0 |
| let alone | 3 | 2 | 0 | 1 | 🟡 | 2026-08-25 | 2026-08-29 | — | 0 |
| be supposed to | 5 | 0 | 3 | 2 | 🟡 | 2026-09-03 | 2026-09-04 | — | 0 |
| end up + -ing | 3 | 3 | 0 | 0 | ✅ | 2026-08-25 | 2026-09-02 | — | 1 |
| as far as I'm concerned / as far as I know | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| I've been meaning to | 3 | 0 | 2 | 1 | 🟡 | 2026-08-25 | 2026-08-26 | — | 0 |
| must have / can't have | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| it's not that… it's just that… | 3 | 1 | 2 | 0 | 🟡 | 2026-08-25 | 2026-08-27 | — | 0 |
| get round to + -ing | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| make sb do / get sb to do | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| that said / having said that | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| I wish + past / past perfect | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| be worth + -ing | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| keep + -ing | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| the thing is / the point is | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| might as well | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| have / get something done | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| no matter how / what / who | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| be about to | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| can't help + -ing | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| have nothing to do with | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| would rather | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| if it weren't for / if it hadn't been for | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| when it comes to | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| it takes (me) … to | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| come across as | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| unless | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| it's been ages since | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| to be fair | 3 | 2 | 0 | 1 | 🟡 | 2026-09-03 | 2026-09-07 | — | 0 |
| be bound to | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| there's no point in + -ing | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| by the time | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| should have / shouldn't have | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| the more…, the more… | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| feel like + -ing | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| manage to / fail to | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| apparently / supposedly / allegedly | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| had better | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| put up with | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| which is why | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| used to vs would | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| it's not like / it's not as if | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| be used to / get used to | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| otherwise | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| tend to | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| no wonder | 3 | 1 | 1 | 1 | 🟡 | 2026-08-25 | 2026-08-27 | — | 1 |
| as long as | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| I could do with | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| it's about time + past | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| be into / not really my thing | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| then again | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| chances are / be likely to | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| rather than | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| if I were you, I'd… | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| not to mention / on top of that | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| struggle to / struggle with | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| the way I see it / I'd say | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| even if / even though | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |

---

## Banco relato (`banco-relato.md`)

Mismas reglas de estado e intervalos (`logica-estructuras.md` §5) y misma cola de repaso: al
armar la ronda se leen **las dos tablas juntas**. Solo aparecen aquí las que no
existían ya en `banco-estructuras.md` — las marcadas ⇄ en el banco de relato se
repasan desde su fila original, arriba.

| Estructura | Veces vista | Bien | Regular | Mal | Estado | Últ. | Próxima revisión | Esquiva | Nativas |
|---|---|---|---|---|---|---|---|---|---|
| I didn't mean to… | 4 | 3 | 0 | 1 | ✅ | 2026-09-03 | 2026-09-11 | — | 0 |
| One thing led to another | 3 | 3 | 0 | 0 | ✅ | 2026-08-25 | 2026-09-02 | — | 2 |
| If I had known… | 3 | 2 | 0 | 1 | 🔴 | 2026-09-03 | 2026-09-04 | — | 0 |
| I had no choice but to | 5 | 2 | 1 | 2 | 🔴 | 2026-09-03 | 2026-09-04 | no wonder | 0 |
| I had no idea (that)… | 4 | 2 | 2 | 0 | 🟡 | 2026-08-21 | 2026-08-25 | — | 0 |
| At first…, but then… | 4 | 1 | 3 | 0 | 🟡 | 2026-09-03 | 2026-09-05 | — | 0 |
| It makes sense (to)… | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| Which meant that… | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| It doesn't feel right | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| I realized (that)… | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| To be honest,… | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| It got out of hand | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| I could have… | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| I didn't expect to… | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| I wasn't planning on | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| as much as | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| It wasn't until… that… | 7 | 3 | 1 | 3 | ✅ | 2026-09-03 | 2026-09-11 | — | 0 |
| All in all,… | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| What surprised me the most was | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
| I was trying to…, but… | 3 | 3 | 0 | 0 | ✅ | 2026-09-03 | 2026-09-11 | — | 0 |
| I think / I don't think… | 0 | 0 | 0 | 0 | ⚪ | — | — | — | 0 |
