# 1. Update the package index
sudo apt-get update -y

# 2. Install required packages
sudo apt-get install -y ca-certificates curl gnupg

# 3. Create keyring directory
sudo install -m 0755 -d /etc/apt/keyrings

# 4. Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# 5. Set permissions
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# 6. Add Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# 7. Update again after adding the Docker repo
sudo apt-get update -y

# 8. Install Docker Engine, CLI, Containerd, Buildx, and Compose plugin
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# 9. Optional: Check Docker status
sudo systemctl status docker
