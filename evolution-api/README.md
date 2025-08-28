# 🚀 Evolution API Docker Compose Setup 🚀

Welcome to the Evolution API Docker Compose setup! This configuration allows you to quickly deploy and manage your Evolution API instance using Docker. The Evolution API is a project that provides a REST API for WhatsApp, allowing you to send and receive messages, manage groups, and more.

## ✨ Features

*   **Easy Deployment:** 🐳 Get Evolution API up and running with a single command.
*   **Persistent Data:** 💾 Your instances are safely stored in a Docker volume.
*   **Customizable:** ⚙️ Easily modify environment variables.

## 📥 How to Get This Configuration

To get this specific Evolution API Docker Compose configuration, you can manually copy its content:

1.  Navigate to the `evolution-api` directory on GitHub: [https://github.com/AnglDavd/docker/tree/main/evolution-api](https://github.com/AnglDavd/docker/tree/main/evolution-api)
2.  For each file within this directory (`.env`, `compose.yaml`, `README.md`), click on the file name, then click the "Raw" button to view its content.
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
    cd docker/evolution-api
    ```
2.  **Configure your environment:**
    Edit the `.env` file in this directory. **This is crucial!** You'll need to:
    *   Set your `AUTHENTICATION_API_KEY`.

3.  **Deploy Evolution API:**
    ```bash
    docker compose up -d
    ```
    This command will download the necessary Docker images, create the containers, and start the Evolution API in the background.

## 🚀 Usage

Once Evolution API is running, you can access its web interface at `http://localhost:8080`.

## 🔄 Updating Your Applications: Stay Fresh!

To ensure you're always running the latest and greatest versions of the Evolution API, follow these steps:

1.  Pull the newest Docker images:
    ```bash
    docker compose pull
    ```
2.  Recreate and start the containers with the new images:
    ```bash
    docker compose up -d
    ```
    This will download any updated images and restart your services, applying the new versions while preserving your data! ✨

## 🔗 Useful Links

*   **Evolution API Official Documentation:** [https://doc.evolution-api.com/](https://doc.evolution-api.com/) 🌐
*   **Evolution API GitHub Repository:** [https://github.com/evolution-api/evolution-api](https://github.com/evolution-api/evolution-api) 🐙

---
_Happy Automating!_ ✨
