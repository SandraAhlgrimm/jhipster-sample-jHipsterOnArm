#!/bin/bash

echo building app distribution - mvnw -Pprod clean verify
./mvnw -Pprod -DskipTests clean verify
echo app distribution build complete - ls -l target
