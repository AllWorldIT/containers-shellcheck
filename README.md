[![pipeline status](https://gitlab.conarx.tech/containers/shellcheck/badges/main/pipeline.svg)](https://gitlab.conarx.tech/containers/shellcheck/-/commits/main)

# Container Information

[Container Source](https://gitlab.conarx.tech/containers/shellcheck) - [GitHub Mirror](https://github.com/AllWorldIT/containers-shellcheck)

This is the Conarx Containers ShellCheck image, it provides shell script linting support to GitLab CI pipelines.



# Mirrors

|  Provider  |  Repository                                |
|------------|--------------------------------------------|
| DockerHub  | allworldit/shellcheck                      |
| Conarx     | registry.conarx.tech/containers/shellcheck |



# Conarx Containers

All our Docker images are part of our Conarx Containers product line. Images are generally based on Alpine Linux and track the
Alpine Linux major and minor version in the format of `vXX.YY`.

Images built from source track both the Alpine Linux major and minor versions in addition to the main software component being
built in the format of `vXX.YY-AA.BB`, where `AA.BB` is the main software component version.

Our images are built using our Flexible Docker Containers framework which includes the below features...

- Flexible container initialization and startup
- Integrated unit testing
- Advanced multi-service health checks
- Native IPv6 support for all containers
- Debugging options



# Community Support

Please use the project [Issue Tracker](https://gitlab.conarx.tech/containers/shellcheck/-/issues).



# Commercial Support

Commercial support for all our Docker images is available from [Conarx](https://conarx.tech).

We also provide consulting services to create and maintain Docker images to meet your exact needs.



# Environment Variables


## CI_PROJECT_DIR

Working directory.



# Usage

The `run-shellcheck` command is a wrapper of `shellcheck` which is able to identify all scripts having a shell interpreter in
the shebang and execute shellcheck on them.

It accepts all shellcheck parameters, with the directory to run on being the last one.

For example...
```bash
run-shellcheck --severity=info --color=always /build
```



# GitLab CI Recipe Example

```
shellcheck:
  image: registry.conarx.tech/containers/shellcheck
  stage: validate
  script:
    - run-shellcheck . warning
  rules:
    - if: $CI_MERGE_REQUEST_IID
```
