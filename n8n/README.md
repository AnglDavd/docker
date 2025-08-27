# 🚀 n8n Docker Compose Setup 🚀

Welcome to the n8n Docker Compose setup! This configuration allows you to quickly deploy and manage your n8n instance using Docker. n8n is a powerful workflow automation tool that helps you connect apps and automate tasks without writing code.

## ✨ Features

*   **Easy Deployment:** 🐳 Get n8n up and running with a single command.
*   **Persistent Data:** 💾 Your workflows and data are safely stored in Docker volumes and host-mounted directories.
*   **Customizable:** ⚙️ Easily modify environment variables and settings to fit your needs, including database, Redis, and SMTP configurations.
*   **Scalable:** 📈 Includes a worker service for improved performance and scalability of workflow execution.

## 📥 How to Get This Configuration

To get this specific n8n Docker Compose configuration, you can manually copy its content:

1.  Navigate to the `n8n` directory on GitHub: [https://github.com/AnglDavd/docker/tree/main/n8n](https://github.com/AnglDavd/docker/tree/main/n8n)
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
    cd docker/n8n
    ```
2.  **Configure your environment:**
    Edit the `.env` file in this directory. **This is crucial!** You'll need to:
    *   Set strong passwords for `POSTGRES_PASSWORD` and `DB_POSTGRESDB_PASSWORD`.
    *   Adjust `GENERIC_TIMEZONE` to your local timezone.
    *   Replace `N8N_HOST` and `WEBHOOK_URL` with your actual domain or IP address.
    *   Define `N8N_DATA_BASE` to specify the host path for n8n's persistent data (uploads, custom files).
    *   Optionally, uncomment and configure `N8N_BASIC_AUTH_USER` and `N8N_BASIC_AUTH_PASSWORD` for UI security.
    *   Optionally, uncomment and configure SMTP settings for email notifications.

3.  **Deploy n8n:**
    ```bash
    docker compose up -d
    ```
    This command will download the necessary Docker images, create the containers, and start n8n and its dependencies (PostgreSQL, Redis) in the background.

## 🚀 Usage

Once n8n is running, you can access its web interface at `http://localhost:5678` (or your configured `N8N_HOST` and port). Start building your amazing workflows! 💡

## 🔄 Updating Your Applications: Stay Fresh!

To ensure you're always running the latest and greatest versions of n8n and its dependencies, follow these steps:

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

*   **n8n Official Website:** [https://n8n.io/](https://n8n.io/) 🌐
*   **n8n GitHub Repository:** [https://github.com/n8n-io/n8n](https://github.com/n8n-io/n8n) 🐙

---
_Happy Automating!_ ✨
