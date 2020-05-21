#!/usr/bin/env bash

mvn clean install

$BROWSER target/site/jacoco/index.html

### Preguntas:
# ¿Cuántas lı́neas cubiertas reporta JaCoCo?
# ¿Cuántos branches cubiertos reporta JaCoCo?

### Respuestas:
# JaCoCo reportó 46 líneas cubiertas de 53, y 25 de 26 branches cubiertos.