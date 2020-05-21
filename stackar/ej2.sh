#!/usr/bin/env bash

mvn clean install

$BROWSER target/site/jacoco/index.html