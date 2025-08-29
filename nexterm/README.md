# 🚀 Nexterm Docker Compose Setup 🚀

Welcome to the Nexterm Docker Compose setup! This configuration allows you to quickly deploy and manage Nexterm using Docker. Nexterm is a web-based terminal emulator.

## ✨ Features

*   **Easy Deployment:** 🐳 Get Nexterm up and running with a single command.
*   **Persistent Data:** 💾 Your data is safely stored in a host-mounted directory.
*   **Secure:** 🔒 Requires an encryption key for security.

## 📥 How to Get This Configuration

To get this specific Nexterm Docker Compose configuration, you can manually copy its content:

1.  Navigate to the `nexterm` directory on GitHub: [https://github.com/AnglDavd/docker/tree/main/nexterm](https://github.com/AnglDavd/docker/tree/main/nexterm)
2.  For each file within this directory (`compose.yaml`, `README.md`), click on the file name, then click the "Raw" button to view its content.
3.  Copy the raw content and paste it into a new file with the same name on your local machine.

---


## 📋 Prerequisites

Before you begin, ensure you have the following installed:

*   [Docker](https://www.docker.com/get-started) 🐳
*   [Docker Compose](https://docs.docker.com/compose/install/) 📦

## 🛠️ Installation & Setup

1.  **Clone this repository (if you haven't already):**
    ```bash
    git clone https://github.com/AnglDavd/docker.git
    cd docker/nexterm
    ```
2.  **Configure your environment:**
    Open the `compose.yaml` file and make the following changes:
    *   **Volume:** Modify the `volumes` section to map to your data directory.
        ```yaml
        volumes:
          - /path/to/your/data:/app/data
        ```
    *   **Encryption Key:** Replace `"your-encryption-key"` with your actual encryption key.
        ```yaml
        environment:
          - ENCRYPTION_KEY="your-encryption-key"
        ```

3.  **Deploy Nexterm:**
    ```bash
    docker compose up -d
    ```
    This command will download the necessary Docker image, create the container, and start Nexterm in the background.

## 🚀 Usage

Once Nexterm is running, you can access its web interface at `http://localhost:2005`.

## 🔄 Updating Your Application: Stay Fresh!

To ensure you're always running the latest and greatest version of Nexterm, follow these steps:

1.  Pull the newest Docker image:
    ```bash
    docker compose pull
    ```
2.  Recreate and start the container with the new image:
    ```bash
    docker compose up -d
    ```
    This will download any updated image and restart your service, applying the new version while preserving your data! ✨

## 🔗 Useful Links

*   **Nexterm GitHub Repository:** [https://github.com/germannewsmaker/nexterm](https://github.com/germannewsmaker/nexterm) 🐙

---
_Happy Hacking!_ ✨
