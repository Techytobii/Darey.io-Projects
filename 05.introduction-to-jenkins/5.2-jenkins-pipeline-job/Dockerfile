FROM ubuntu:24.04

# 1. Update the package index and install required packages
RUN apt-get update -y && \
    apt-get install -y ca-certificates curl gnupg

# 2. Create keyring directory
RUN install -m 0755 -d /etc/apt/keyrings

# 3. Add Docker’s official GPG key
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# 4. Set permissions
RUN chmod a+r /etc/apt/keyrings/docker.gpg

# 5. Add Docker repository
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
    https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo \"$VERSION_CODENAME\") stable" \
    > /etc/apt/sources.list.d/docker.list

# 6. Update again after adding the Docker repo
RUN apt-get update -y

# 7. Install Docker Engine, CLI, Containerd, Buildx, and Compose plugin
RUN apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
