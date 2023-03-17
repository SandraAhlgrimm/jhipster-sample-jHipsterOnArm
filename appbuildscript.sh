#!/bin/bash

echo building app distribution - mvnw -Pprod clean verify
./mvnw -Pprod clean verify
echo app distribution build complete - ls -l target