# Informe Taller 3

## Ejercicio 1
Randoop produjo 378 test cases, de los cuales ninguno falló. El código parece cumplir el contrato de equals y hashCode, y como todavía no implementamos ningún otro contrato, Randoop no encuentra ningún error.

## Ejercicio 2
JaCoCo reportó 46 líneas cubiertas de 53, y 25 de 26 branches cubiertos. Principalmente las líneas no cubiertas ocurren en el método `hashCode()`. La única explicación que puedo encontrar por la que Randoop no está generando tests de ese método es que el contrato de Java de `hashCode()` no lo obliga a devolver un número en particular para una representación, sino que solamente
debe cumplir que no produce un error y que dos objetos iguales deben tener el mismo `hashCode()`. Como Randoop solo hace checkeos de igualdad, permitirle utilizar `hashCode()` haría que se produjeran tests que corroboren que el resultado de `hashCode()` es un número en particular, llegando a una sobreespecificación.

## Ejercicio 3
Se generaron 144 tests que fallan.

## Ejercicio 4

Los tests del ejercicio 3 se arreglaron haciendo que `pop()`
ponga un `null` en la posición del elemento que acaba de sacar.


## Ejercicio 5
1. PiTest construyó 52 mutantes, y su mutation score fue de 39/52 (75%).
2. El mejor mutation score que pude obtener fue de 46/52 (88%). Los mutantes
que modificaban repOk no se pueden matar por el hecho de que no se puede armar
una instancia de la clase que haga que repOk devuelva false, o sea que cualquier
mutante que relaje la condición del repOk no podrá ser matado. Además, PiTest encontró
un mutante equivalente, que modificaba una multiplicación por una división
en hashCode(). Era una multiplicación por 1, cuyo resultado será siempre igual a la
división por 1.
