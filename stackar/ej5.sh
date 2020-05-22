#!/usr/bin/env bash

mvn -e clean install org.pitest:pitest-maven:mutationCoverage

# Los resultados están en target/pit-reports

### Preguntas:
# 1. ¿Cuántas mutantes construye PiTest? ¿Cuál es el mutation score
# (mutantes vivos / mutantes totales) que reporta PiTest?
#2. Extender manualmente el test suite para obtener el mejor mutation score
# posible con PiTest. ¿Cuál es el mejor mutation score que pudo obtener?
# ¿Qué mutantes equivalentes encontró?

### Respuestas:
# 1. PiTest construyó 52 mutantes, y su mutation score fue de 39/52 (75%).

