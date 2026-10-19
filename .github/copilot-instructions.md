# Repository Instructions

## Build, test, and lint

- Requires Java 17 and Maven. Run the full build and test suite with `mvn --batch-mode clean verify`.
- Run one test class with `mvn --batch-mode -Dtest=BasicAdditionTest test`, or one test method with `mvn --batch-mode "-Dtest=BasicAdditionTest#addsPositiveNumbers" test`.
- `ci.bat` (Windows) and `ci.sh` (Linux/macOS) run `clean verify` and check that the runnable JAR was produced. The GitHub Actions workflow uses these scripts on all three platforms.
- No lint tool or lint command is configured in this repository.

## Architecture

- This is a Java 17 Maven application. `com.example.variant11.App` is the entry point; the JAR manifest is configured to launch it. `BasicAddition` is a separate utility class, with its JUnit 5 tests under the matching package in `src/test/java`.
- `pom.xml` sets the Java release, JUnit Jupiter dependency, compiler and Surefire plugins, and runnable-JAR main class. Maven owns build output under `target/`.
- `.github/workflows/ci.yml` runs the platform-specific CI scripts on Ubuntu, Windows, and macOS, then uploads the JAR. The agent, prompt, and skill definitions under `.github/` describe repository automation; consult `docs/architecture.md` for their planned workflow and boundaries.

## Repository conventions

- Keep Java sources and tests in the Maven layout under the matching `com.example.variant11` package. Tests use JUnit Jupiter and follow the `*Test` naming convention.
- Preserve the existing Java 17 and UTF-8 Maven settings and existing plugin/dependency configuration when changing the build.
- Inspect Git status and relevant files before editing. Preserve existing user changes; make focused, repeatable edits and do not overwrite or delete existing files without approval.
- Report build or test failures explicitly. Distinguish checks actually run from checks that could not be performed.
