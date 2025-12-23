When run as a devcontainer the jupyter lab server will not be started as the
vscode will use the jupyter notebook plugin to perform evaluation. If run
via `docker compose` then the juypter lab instance will started and should be
connected to using the provided url in the docker compose logs (with token)