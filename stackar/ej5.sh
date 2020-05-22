#!/usr/bin/env bash

mvn -e clean install org.pitest:pitest-maven:mutationCoverage

$BROWSER target/pit-reports/*/index.html

### Preguntas:
# 1. ¿Cuántas mutantes construye PiTest? ¿Cuál es el mutation score
# (mutantes vivos / mutantes totales) que reporta PiTest?
#2. Extender manualmente el test suite para obtener el mejor mutation score
# posible con PiTest. ¿Cuál es el mejor mutation score que pudo obtener?
# ¿Qué mutantes equivalentes encontró?

### Respuestas:
# 1. PiTest construyó 52 mutantes, y su mutation score fue de 39/52 (75%).
# 2. El mejor mutation score que pude obtener fue de 46/52 (88%). Los mutantes
# que modificaban repOk no se pueden matar por el hecho de que no se puede armar
# una instancia de la clase que haga que repOk devuelva false, o sea que cualquier
# mutante que relaje la condición del repOk no podrá ser matado. Además, PiTest encontró
# un mutante equivalente, que modificaba una multiplicación por una división
# en hashCode(). Era una multiplicación por 1, cuyo resultado será siempre igual a la
# división por 1.

