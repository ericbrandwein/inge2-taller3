#!/usr/bin/env bash

# Antes de esto tuve que cambiar en el pom.xml el source y target de 1.5 a 1.6, porque
# sino me tiraba error de que ya no estaba soportado. Debo tener una versión de
# maven más nueva que la de la cátedra.
mvn clean install