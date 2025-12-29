FROM cgr.dev/chainguard/wolfi-base:latest
ARG KDB_VERSION="1.0.0"

RUN apk --no-cache add curl bash py3-pip git openssh-client gcc

USER nonroot
RUN curl -sL https://portal.dl.kx.com/assets/raw/kdb-x/install_kdb/${KDB_VERSION}/install_kdb.sh | sed -e '/    setup_license/d' | bash -s -- -y --b64lic "AA=="

# use explicit pip install while developing... should be replaced with `RUN pip install -r requirements.txt`
RUN pip install --pre pykx && pip install ib_async streamlit

# required for pykx to perform subprocess execution in kx.tick* commands
RUN python3.13 -c 'import pykx; pykx.install_into_QHOME()'
ENV PYKX_PYTHON_LIB_PATH=/usr/lib/libpython3.13.so.1.0
ENV PATH=${PATH}:/home/nonroot/.local/bin

# EXPOSE 8501
# HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health
# ENTRYPOINT ["streamlit", "run", "streamlit_app.py", "--server.headless true", "--browser.gatherUsageStats false"]