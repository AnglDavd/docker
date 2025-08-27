# 🐳 Docker Compose Configurations 🐳

This repository contains a collection of Docker Compose configurations for various services.

## 🚀 Services

- [n8n](./n8n/README.md): An open-source workflow automation platform.
  - 🌐 Official Website: [https://n8n.io/](https://n8n.io/)
  - 🐙 GitHub Repository: [https://github.com/n8n-io/n8n](https://github.com/n8n-io/n8n)
- [romm](./romm/README.md): A brief description of romm.
  - 🐙 GitHub Repository: [https://github.com/rommapp/romm](https://github.com/rommapp/romm)

## 🛠️ How to Use

Each subdirectory contains its own Docker Compose configuration and a `README.md` file with specific instructions.

## 📥 How to Get Specific Configurations

This repository contains multiple Docker Compose configurations. You can download a specific configuration without cloning the entire repository.

### Method 1: Using `curl` and `unzip` (Recommended)

This method allows you to download a specific configuration directly from GitHub without cloning the entire repository. Replace `<subdirectory_name>` with `n8n` or `romm`.

```bash
# 1. Download the entire repository as a .zip file
curl -LO https://github.com/AnglDavd/docker/archive/refs/heads/main.zip

# 2. Extract only the desired subdirectory from the downloaded .zip
unzip main.zip "docker-main/<subdirectory_name>/*" -d .

# 3. Move the content to your current directory and clean up
mv docker-main/<subdirectory_name>/* .
rm -rf docker-main main.zip
```

### Method 2: Manual Download

You can also manually navigate to the desired subdirectory on GitHub and download individual files or copy their content.

1.  Go to the subdirectory on GitHub (e.g., [https://github.com/AnglDavd/docker/tree/main/n8n](https://github.com/AnglDavd/docker/tree/main/n8n)).
2.  Click on each file, then click the "Raw" button to view its content, and copy it to a new local file.

---
_Happy Containerizing!_ ✨