FROM ghcr.io/penguincloud/core:v5.0.0 AS BUILD
LABEL company="Penguin Tech Group LLC"
LABEL org.opencontainers.image.authors="info@penguintech.group"
LABEL license="GNU AGPL3"

# GET THE FILES WHERE WE NEED THEM!
COPY . /opt/manager/
WORKDIR /opt/manager


# PUT YER ARGS in here
ARG APP_TITLE="PTGAPP" # Change this to actual title for Default
ARG MAAS_REPO="ppa:maas/2.9"
ARG MAAS_ADMIN_USER="ptg-admin"
ARG MAAS_ADMIN_PASSWORD="ChangeMeNow!"
ARG MAAS_ADMIN_EMAIL="admin@localnet"
ARG MAAS_ADMIN_SSHKEY=""
# BUILD IT!
RUN ansible-playbook build.yml -c local
# PUT YER ENVS in here
ENV HELLO="WORLD"
ENV MAAS_ADMIN_USER="ptg-user"
ENV MAAS_ADMIN_PASSWORD="ChangeMeNow!"
ENV MAAS_ADMIN_EMAIL="user@localnet"
ENV MAAS_ADMIN_SSHKEY=""

# Switch to non-root user
USER ptg-user

# Entrypoint time (aka runtime)
ENTRYPOINT ["/bin/bash","/opt/manager/entrypoint.sh"]
