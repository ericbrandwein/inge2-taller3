#!/usr/bin/env bash

STACKAR_DIR=main/java/org/autotest
BUILD_DIR=build
SRC_DIR=src
RANDOOP_CLASS_PATH=lib/randoop-all-4.2.3.jar
TEST_GENERATION_CLASSPATH=$RANDOOP_CLASS_PATH:$BUILD_DIR

mkdir -p build
javac -classpath lib/randoop-all-4.2.3.jar -d $BUILD_DIR $SRC_DIR/${STACKAR_DIR}/StackAr.java

java -ea -classpath $TEST_GENERATION_CLASSPATH randoop.main.Main gentests \
    --testclass=org.autotest.StackAr --time-limit=15 --testsperfile=500 \
    --junit-output-dir=src/test/java

### Preguntas:

# ¿Cuantas test cases produjo Randoop? ¿Hay failing test cases?

### Respuestas:

# Randoop produjo 378 test cases, de los cuales ninguno falló.

### Output de Randoop:

# Randoop for Java version "4.2.3, local changes, branch master, commit 6fb16d1, 2020-03-31".
# ANNOTATION: Detected @CheckRep-annotated method "public boolean org.autotest.StackAr.repOK()". Will use it to check rep invariant of class org.autotest.StackAr during generation.
# Will explore 1 classes
# PUBLIC MEMBERS=12
# Explorer = ForwardGenerator(steps: 0, null steps: 0, num_sequences_generated: 0;
#     allSequences: 0, regresson seqs: 0, error seqs: 0=0=0, invalid seqs: 0, subsumed_sequences: 0, num_failed_output_test: 0;
#     runtimePrimitivesSeen:38)

# Progress update: steps=1, test inputs generated=0, failing inputs=0      (Thu May 21 18:14:24 ART 2020     22MB used)
# Progress update: steps=1000, test inputs generated=825, failing inputs=0      (Thu May 21 18:14:38 ART 2020     62MB used)
# Progress update: steps=1037, test inputs generated=854, failing inputs=0      (Thu May 21 18:14:39 ART 2020     63MB used)
# Normal method executions: 120860
# Exceptional method executions: 139

# Average method execution time (normal termination):      0.000553
# Average method execution time (exceptional termination): 0.0299
# Approximate memory usage 63MB
# Explorer = ForwardGenerator(steps: 1037, null steps: 183, num_sequences_generated: 854;
#     allSequences: 854, regresson seqs: 853, error seqs: 0=0=0, invalid seqs: 0, subsumed_sequences: 0, num_failed_output_test: 1;
#     runtimePrimitivesSeen:54)

# No error-revealing tests to output.

# About to look for failing assertions in 472 regression sequences.

# Regression test output:
# Regression test count: 472
# Writing regression JUnit tests...
# Created file /mnt/Data/Facultad/inge2/talleres/3/stackar/src/RegressionTest0.java
# Created file /mnt/Data/Facultad/inge2/talleres/3/stackar/src/RegressionTest.java
# Wrote regression JUnit tests.
# About to look for flaky methods.

# Invalid tests generated: 0
