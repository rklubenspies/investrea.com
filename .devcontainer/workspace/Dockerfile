# ========================
# Arguments
# ========================

# For Apple Silicon (arm64) support, use `bookworm` or `bullseye`.
ARG DEBIAN_VARIANT=bookworm

# `proto` toolchain manager to install
ARG PROTO_VERSION

# ========================
# Development Base Image
# ========================
FROM mcr.microsoft.com/vscode/devcontainers/base:$DEBIAN_VARIANT as development-base

# Update packages and install latest core tools
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get -y install --no-install-recommends git unzip gzip xz-utils curl zsh \
  && rm -rf /var/lib/apt/lists/*

# Use non-root user
USER vscode

# Ensure zsh is the default shell and install oh-my-zsh
ENV SHELL /usr/bin/zsh
RUN if [ ! -d "$HOME"/.oh-my-zsh ]; then \
  sh -c "$(curl -fsSL https://install.ohmyz.sh)" "" --unattended; \
  fi

# Install and activate `proto` toolchain manager
RUN curl -fsSL https://moonrepo.dev/install/proto.sh | bash -s -- ${PROTO_VERSION} --yes

# ========================
# Devcontainer
# ========================
FROM development-base as devcontainer

RUN echo "Devcontainer Ready!"
