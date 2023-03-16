#!/bin/bash

echo building app distribution - mvnw -Pprod clean verify
./mvnw -Pprod clean verify