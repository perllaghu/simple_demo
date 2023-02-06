FROM jupyter/minimal-notebook:2022-05-01

LABEL MAINTAINER="NaaS Project <edina@ed.ac.uk>"

# Fix: https://github.com/hadolint/hadolint/wiki/DL4006
# Fix: https://github.com/koalaman/shellcheck/wiki/SC3014
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN mamba install -y altair ipywidgets matplotlib numpy pandas

COPY --chown=${NB_UID}:${NB_GID} simple_demos.ipynb "${HOME}"/simple_demos.ipynb