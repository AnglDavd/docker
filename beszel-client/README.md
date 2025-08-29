# 🚀 Beszel Client Docker Compose Setup 🚀

Welcome to the Beszel Client Docker Compose setup! This configuration allows you to quickly deploy and manage the Beszel Agent using Docker. The Beszel Agent is a client that connects to your Beszel chat server.

## ✨ Features

*   **Easy Deployment:** 🐳 Get the Beszel Agent up and running with a single command.
*   **Host Networking:** 🌐 Uses host networking for simplified communication.
*   **Secure:** 🔒 Requires an SSH key for secure connections.

## 📥 How to Get This Configuration

To get this specific Beszel Client Docker Compose configuration, you can manually copy its content:

1.  Navigate to the `beszel-client` directory on GitHub: [https://github.com/AnglDavd/docker/tree/main/beszel-client](https://github.com/AnglDavd/docker/tree/main/beszel-client)
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
    cd docker/beszel-client
    ```
2.  **Configure your environment:**
    Open the `compose.yaml` file and make the following changes:
    *   **Volume:** Modify the `volumes` section to map to your `.beszel` directory.
        ```yaml
        volumes:
          - /path/to/your/.beszel:/extra-filesystems/sda1:ro
        ```
    *   **SSH Key:** Replace `"your-ssh-public-key"` with your actual SSH public key.
        ```yaml
        environment:
          KEY: "your-ssh-public-key"
        ```

3.  **Deploy the Beszel Agent:**
    ```bash
    docker compose up -d
    ```
    This command will download the necessary Docker image, create the container, and start the Beszel Agent in the background.

## 🚀 Usage

Once the Beszel Agent is running, it will connect to your Beszel server. Check the container logs for connection status.

## 🔄 Updating Your Application: Stay Fresh!

To ensure you're always running the latest and greatest version of the Beszel Agent, follow these steps:

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

*   **Beszel GitHub Repository:** [https://github.com/henrygd/beszel](https://github.com/henrygd/beszel) 🐙

---
_Happy Chatting!_ ✨
