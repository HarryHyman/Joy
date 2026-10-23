FROM --platform=linux/amd64 ubuntu:24.04

# Prevent interactive prompts during apt install
ENV DEBIAN_FRONTEND=noninteractive

# Install standard Linux build tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    gdb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Default command keeps the container ready or opens an interactive bash shell
CMD ["/bin/bash"]
