# Progreso — Verb Sprint

Estado de cada verbo. Fuente de verdad para armar la ronda
(`logica-verbos.md` §9). **Datos, no lógica.**

Estados: ⚪ nueva · 🔴 fallando · 🟡 en progreso · ✅ interiorizado.
Próxima revisión vencida (≤ hoy) = entra en la ronda.
Nivel: N1 → N2 → N3 → N4 (`logica-verbos.md` §6). Sube con acierto, cae a N1 con ❌.

**Una columna por nota** (`logica-verbos.md` §7): `Bien` ← ✅/🌟 · `Regular` ← ⚠️
· `Mal` ← ❌. De ahí el invariante que valida la tabla:

```
Bien + Regular + Mal  =  Vistas        en las 100 filas, siempre
```

Si una fila no cumple eso, un cierre se escribió mal. Comprobación:

```bash
awk -F'|' 'function t(s){gsub(/^ +| +$/,"",s); return s}
  BEGIN { head=1 }
  !/^[ \t]*\|/ { ok=0; head=1; next }
  head { head=0; delete I
         for(i=2;i<NF;i++) if(t($i)!="") I[t($i)]=i
         if(("Verbo" in I)&&("Vistas" in I)){ ok=1
           K=I["Verbo"]; V=I["Vistas"]
           B=I["Bien"]; R=I["Regular"]; M=I["Mal"]; N=I["Nativas"] } next }
  ok && /^\|/ && t($V) ~ /^[0-9]+$/ {
    if (t($B)+t($R)+t($M) != t($V)) print "DESCUADRE:", t($K)
    if (t($N)+0 > t($B)+0)          print "MÁS 🌟 QUE ACIERTOS:", t($K) }' \
    verbos/progreso-verbos.md
```

**Por qué relee la cabecera en cada tabla.** Los índices de columna se fijan con
la primera línea de *cada* tabla, no una sola vez para todo el fichero. Así la
tabla de métricas del final —que tiene otras columnas (`Ítems`, `⚠️`, `❌`…)— no
se valida con los índices de los verbos, que era lo que hacía leer la fila de
una sesión como si fuera un verbo y cantar un `DESCUADRE` falso. Y al releer en
vez de **parar**, un fichero con dos tablas de datos seguidas (el caso de
`estructuras/progreso-estructuras.md`, con banco principal y banco relato) sigue
validándose entero. `panel/cierre.sh` es compartido: cualquier arreglo aquí
tiene que valer para los dos.
**Nativas:** cuántos 🌟 lleva. Es un **subconjunto de `Bien`** y **no cambia el
intervalo** — un 🌟 sube un peldaño igual que un ✅, nunca dos. Solo registra qué
verbos le salen ya nativos.

**Sustituto:** lo que Jorge dijo en lugar del verbo. Es el campo de diagnóstico —
muestra el patrón de evasión, no solo la tasa de fallo. Se sobrescribe con el
rodeo más reciente.

| Verbo | Cat | Vistas | Bien | Regular | Mal | Nivel | Estado | Últ. | Próxima revisión | Sustituto | Nativas |
|---|---|---|---|---|---|---|---|---|---|---|---|
| borrow | CONF | 5 | 1 | 3 | 1 | N2 | 🟡 | 2026-09-03 | 2026-09-05 | — | 0 |
| lend | CONF | 5 | 2 | 0 | 3 | N3 | 🟡 | 2026-08-26 | 2026-08-30 | — | 0 |
| raise | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| rise | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| tell | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| say | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| bring | CONF | 2 | 2 | 0 | 0 | N3 | 🟡 | 2026-09-03 | 2026-09-07 | — | 0 |
| take | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| remind | CONF | 5 | 2 | 2 | 1 | N3 | 🟡 | 2026-09-03 | 2026-09-07 | — | 0 |
| remember | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| spend | CONF | 5 | 2 | 3 | 0 | N3 | 🟡 | 2026-09-03 | 2026-09-07 | — | 0 |
| waste | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| make | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| do | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| hear | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| listen (to) | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| watch | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| look (at) | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| see | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| win | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| beat | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| earn | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| meet | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| know | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| steal | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| rob | CONF | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| afford | PER | 5 | 3 | 0 | 2 | N4 | 🟡 | 2026-09-03 | 2026-09-11 | — | 0 |
| mind | PER | 2 | 0 | 0 | 2 | N1 | 🔴 | 2026-09-03 | 2026-09-04 | i can deal with no subtatile film | 0 |
| avoid | PER | 4 | 3 | 0 | 1 | N2 | 🟡 | 2026-09-03 | 2026-09-05 | — | 0 |
| assume | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| involve | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| require | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| mean | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| matter | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| last | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| cope (with) | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| reckon | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| realize | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| notice | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| wonder | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| owe | PER | 4 | 1 | 1 | 2 | N1 | 🔴 | 2026-09-03 | 2026-09-04 | my brother borrowed me 200 euros | 0 |
| deserve | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| miss | PER | 3 | 2 | 1 | 0 | N3 | 🟡 | 2026-08-26 | 2026-08-30 | — | 0 |
| rush | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| hesitate | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| apply (for) | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| attend | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| achieve | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| improve | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| complain | PER | 5 | 0 | 4 | 1 | N1 | 🟡 | 2026-08-26 | 2026-08-27 | — | 0 |
| warn | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| refuse | PER | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| work out | PHR | 5 | 3 | 0 | 2 | N4 | 🟡 | 2026-09-03 | 2026-09-11 | — | 0 |
| come up with | PHR | 2 | 0 | 0 | 2 | N1 | 🔴 | 2026-09-03 | 2026-09-04 | i could say nothing | 0 |
| put off | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| get away with | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| figure out | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| deal with | PHR | 5 | 2 | 1 | 2 | N3 | 🟡 | 2026-08-26 | 2026-08-30 | — | 0 |
| run out of | PHR | 6 | 1 | 5 | 0 | N2 | 🟡 | 2026-09-03 | 2026-09-05 | — | 0 |
| get on with | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| pick up | PHR | 4 | 2 | 1 | 1 | N3 | 🟡 | 2026-08-25 | 2026-08-29 | — | 0 |
| turn out | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| go through | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| come across | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| bring up | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| sort out | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| take over | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| catch up (with) | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| look into | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| back up | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| call off | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| drop off | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| hang out | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| make up | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| point out | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| set up | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| show up | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| stand out | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| work on | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| get by | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| break down | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| take up | PHR | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| claim | OPI | 4 | 2 | 1 | 1 | N3 | 🟡 | 2026-08-26 | 2026-08-30 | — | 0 |
| argue | OPI | 4 | 1 | 1 | 2 | N2 | 🟡 | 2026-08-26 | 2026-08-28 | — | 0 |
| acknowledge | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| imply | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| undermine | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| address | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| tackle | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| highlight | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| dismiss | OPI | 2 | 1 | 0 | 1 | N2 | 🟡 | 2026-09-03 | 2026-09-05 | — | 0 |
| blame | OPI | 6 | 2 | 2 | 2 | N3 | 🟡 | 2026-09-03 | 2026-09-07 | — | 0 |
| rely on | OPI | 5 | 2 | 1 | 2 | N3 | 🟡 | 2026-08-26 | 2026-08-30 | — | 1 |
| stem from | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| account for | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| back | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| enforce | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| expose | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| mislead | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |
| overstate | OPI | 0 | 0 | 0 | 0 | N1 | ⚪ | — | — | — | 0 |

---

## Curva de métricas por sesión

| Fecha | Ítems | ✅+🌟 | ⚠️ | ❌ | Rodeos | % acierto | Nuevos | Weak Verbs del día |
|---|---|---|---|---|---|---|---|---|
| 2026-08-19 | 15 | 2 | 4 | 9 | 9 | 13% | 15 | afford · rely on · work out · complain · remind |
| 2026-08-20 | 15 | 3 | 6 | 6 | 4 | 20% | 2 | deal with · argue · owe · afford · work out |
| 2026-08-21 | 15 | 6 | 7 | 2 | 0 | 40% | 0 | blame · lend · deal with · owe · complain |
| 2026-08-25 | 15 | 8 | 6 | 1 | 1 | 53% | 0 | argue · complain · borrow · run out of · spend |
| 2026-08-26 | 15 | 8 | 3 | 4 | 3 | 53% | 4 | avoid · come up with · dismiss · mind · complain |
| 2026-09-03 | 13 | 8 | 2 | 3 | 3 | 62% | 0 | mind · come up with · owe · borrow · run out of |
