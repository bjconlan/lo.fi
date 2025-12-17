Devcontainer/codespaces require the configuration of the environment variable
`LIVEBOOK_PASSWORD` which can either be specified in the optional
`.devcontainer/devcontainer.env` file or if using codespaces via the
repositories  `Settings > Secrets and variables > codespaces` configuration.

When running directly via `docker compose up` the default token based auth is
used and should output the approprate url to connect to in the log output.