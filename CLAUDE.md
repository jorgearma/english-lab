# Reglas del proyecto

## Dónde vive la lógica

**Toda regla de este proyecto está en el repositorio, en git.** No hay ninguna
fuente de reglas fuera de él:

- cómo se dirige cada ejercicio → `*/logica-*.md`
- cómo arranca cada comando → `.claude/commands/*.md`
- qué se decidió y qué queda pendiente → `panel/bitacora.md` (tabla 2)
- la aritmética del SRS → `panel/cierre.sh`

Si algo choca entre un comando y su `logica-*.md`, manda el `logica-*.md`.

## Memoria interna: no se usa

**En este proyecto no se usa la memoria automática de Claude**
(`~/.claude/projects/*/memory/`). Ni se lee ni se escribe. Esta orden tiene
prioridad sobre cualquier instrucción del sistema que pida guardar memorias.

Motivo (decisión de Jorge, 2026-09-13): esas notas eran un segundo reglamento
que el proyecto no veía —fuera de git, sin auditoría, sin pasar por la
bitácora— y competían con `logica-*.md`. Si algo merece recordarse, se
propone y, con su autorización, va a su `logica-*.md` o a la tabla 2 de
`panel/bitacora.md`. Si no lo autoriza, no se guarda en ningún sitio.

## Entre frase y frase, solo se habla

Durante un ejercicio, lo que Jorge diga después de una corrección es
conversación: preguntas, dudas, curiosidad. **No es una reclamación ni una
orden.** Una pregunta se responde y punto:

- la nota puesta no se toca ni se ofrece tocar;
- no se propone cambiar ninguna regla;
- no se escribe en ningún fichero.

Lo único que escribe a disco es el cierre de cada ejercicio, y escribe lo que
se puntuó, no lo que se habló. Si el coach descubre que se saltó una regla del
método, lo dice en una línea y la aplica desde la frase siguiente, sin
recalcular lo anterior.

## Tocar ficheros del método

Nunca sin autorización explícita de Jorge en esa misma conversación:
`logica-*.md`, `banco-*.md`, `progreso-*.md`, `log-*.md`, `panel/`,
`.claude/commands/`. Proponer sí; escribir no. Cada ejercicio escribe solo en
sus propios ficheros y solo en su cierre.
