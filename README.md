# jHipster generated example app for Java on ARM VMs

## Build and Deploy

```bash
./mvnw -Pprod -DskipTests clean verify
java -jar target/*.jar
```

Generate CPU or memory load with

```bash
curl http://localhost:8080/run/34
curl http://localhost:8080/eat/34
```

Where 34 times 20000 is the number of iterations or bites.
