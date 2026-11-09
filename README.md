# Spring Hello Test

Standalone Java 21 / Maven / Spring Boot application. It has no CPF dependencies or configuration. Port 8081 is used so it can run alongside an application using 8080.

## Run on Windows (PowerShell)

Open PowerShell in this folder, or change to its full path:

```powershell
cd "C:\Users\tknee\Documents\Codex\2026-11-09\referenced-chatgpt-conversation-this-is-an\outputs\spring-hello-test"
java -version
mvn -version
mvn spring-boot:run
```

Use a Java 21 JDK and Maven 3.6.3 or newer. `mvn -version` should report Java 21. If needed, set `JAVA_HOME` to your JDK 21 folder in this terminal before running Maven. The first run needs internet access to download dependencies.

## Test

In another PowerShell window:

```powershell
curl.exe -i http://localhost:8081/hello
```

Expected: HTTP 200 with the plain-text body `Hello World Spring!`.
You can also open http://localhost:8081/hello in a browser.

Stop the application with Ctrl+C in its terminal.

## Build and run a JAR

```powershell
mvn clean package
java -jar target\spring-hello-test-0.0.1-SNAPSHOT.jar
```

This minimal project has no automated test suite; verify its endpoint with the HTTP request above.

If port 8081 is occupied, use another port:

```powershell
mvn spring-boot:run "-Dspring-boot.run.arguments=--server.port=8082"
```

Then test http://localhost:8082/hello.

The whole folder can be moved to another location without the CPF project.
