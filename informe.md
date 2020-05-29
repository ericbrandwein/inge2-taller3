# Informe Taller 3

## Ejercicio 1
Randoop produjo 378 test cases, de los cuales ninguno falló. El código parece cumplir el contrato de equals y hashCode, y como todavía no implementamos ningún otro contrato, Randoop no encuentra ningún error.

## Ejercicio 2
JaCoCo reportó 46 líneas cubiertas de 53, y 25 de 26 branches cubiertos. Principalmente las líneas no cubiertas ocurren en el método `hashCode()`. La única explicación que puedo encontrar por la que Randoop no está generando tests de ese método es que el contrato de Java de `hashCode()` no lo obliga a devolver un número en particular para una representación, sino que solamente
debe cumplir que no produce un error y que dos objetos iguales deben tener el mismo `hashCode()`. Como Randoop solo hace checkeos de igualdad, permitirle utilizar `hashCode()` haría que se produjeran tests que corroboren que el resultado de `hashCode()` es un número en particular, llegando a una sobreespecificación.

## Ejercicio 3

Para implementar el `repOk` simplemente transcribí las condiciones uniéndolas con `&&`. La última condición fue la más complicada, la cual meritó un método aparte `allElementsAboveReadIndexAreNull()` que recorre todos los elementos de índice mayor que `readIndex` tratando de encontrar uno que no sea `null`.

Correr Randoop por un minuto sobre la nueva clase `StackAr` generó 144 tests que fallan. Todos
hacen que `repOk` devuelva `false`.

## Ejercicio 4

La causa de los test con fallos terminó siendo que cuando se eliminaba un elemento del stack,
el mismo no era suplantado por un `null`, rompiendo la condición de que todos los elementos de índice mayor a `readIndex` debían ser `null`.
Hacer que `pop()` ponga un `null` en la posición del elemento que acaba de sacar arregló los 144 tests. Corrí Randoop por un minuto de nuevo, y no encontró ningún test que falle.


## Ejercicio 5
### 1.

PiTest construyó 52 mutantes, y su mutation score fue de 39/52 (75%). Aparecieron algunos mutantes sobrevivientes:

- En el método `pop()` sobrevivió uno que cambió el valor de retorno por `null`.
- En el método `hashCode()` sobrevivieron 5 que cambiaban las operaciones matemáticas.
- En `equals()` sobrevivieron dos que cambiaban los valores devueltos en algunas líneas. Parece que Randoop no generó suficientes tests como para cubrirlos.
- En `repOk()` y `allElementsAboveReadIndexAreNull()` hubieron 5 que no fueron matados, que cambian los valores de retorno y algunas operaciones, entre otras cosas.

### 2.
El mejor mutation score que pude obtener fue de 46/52 (88%), matando con 4 tests el mutante de `pop()`, los mutantes de `equals()`, y casi todos los mutantes de `hashCode()`.

Los mutantes que modifican `repOk()` no se pueden matar por el hecho de que no se puede armar
una instancia de la clase que haga que `repOk()` devuelva false, o sea que cualquier
mutante que relaje la condición del `repOk()` no podrá ser matado. Además, PiTest encontró
un mutante equivalente, que modificaba una multiplicación por una división
en `hashCode()`. Era una multiplicación por 1, cuyo resultado será siempre igual a la
división por 1, y por lo tanto no se puede matar con ningún test.
