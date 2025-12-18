FROM cgr.dev/chainguard/wolfi-base:latest
ARG KDB_VERSION="1.0.0"

RUN apk --no-cache add curl bash py3-pip

USER nonroot
RUN curl -sL https://portal.dl.kx.com/assets/raw/kdb-x/install_kdb/${KDB_VERSION}/install_kdb.sh | sed -e '/    setup_license/d' | bash -s -- -y --b64lic "AA=="\
 && pip install --upgrade --pre jupyterlab pykx

 ENTRYPOINT ["/home/nonroot/.local/bin/jupyter-lab"]
