FROM cgr.dev/chainguard/wolfi-base:latest
ARG KDB_VERSION="1.0.0"

RUN apk --no-cache add curl bash py3-pip git openssh-client

USER nonroot
RUN curl -sL https://portal.dl.kx.com/assets/raw/kdb-x/install_kdb/${KDB_VERSION}/install_kdb.sh | sed -e '/    setup_license/d' | bash -s -- -y --b64lic "AA=="\
 && pip install --upgrade --pre jupyterlab pykx

# required for pykx to perform subprocess execution in kx.tick* commands
RUN python3.13 -c 'import pykx; pykx.install_into_QHOME()'
ENV PYKX_PYTHON_LIB_PATH /usr/lib/libpython3.13.so.1.0

ENTRYPOINT ["/home/nonroot/.local/bin/jupyter-lab"]
