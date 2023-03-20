#!/bin/bash

echo building app distribution - mvnw -Pprod clean verify
./mvnw -Pprod clean verify
echo copying vmbuildscript.sh target
cp vmbuildscript.sh target
echo app distribution build complete - ls -l target