The KDB-X license file should be provided using the repository path
`kdb-x/kc.lic` which will be mounted as a secret file in the kdb-x container.

The the kc.lic is the base64 decoded license key provided by kx and can be
created by performing `echo $KDBX_LICENSE_B64 | base64 -d > kc.lic`.

Jupyter notebook doesn't have any passwords sets so relys on having access to
the docker compose's logs to identify the token string or alternatively
running `/home/nonroot/.local/bin/jupyter server list` to provide the running
instance's token string.