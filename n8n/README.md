# 🚀 n8n Docker Compose Setup 🚀

Welcome to the n8n Docker Compose setup! This configuration allows you to quickly deploy and manage your n8n instance using Docker. n8n is a powerful workflow automation tool that helps you connect apps and automate tasks without writing code.

## ✨ Features

*   **Easy Deployment:** 🐳 Get n8n up and running with a single command.
*   **Persistent Data:** 💾 Your workflows and data are safely stored in Docker volumes.
*   **Customizable:** ⚙️ Easily modify environment variables and settings to fit your needs.
*   **Scalable:** 📈 Ready for expansion as your automation needs grow.

## 📥 How to Get This Configuration

To get this specific n8n Docker Compose configuration, you can manually copy its content:

1.  Navigate to the `n8n` directory on GitHub: [https://github.com/AnglDavd/docker/tree/main/n8n](https://github.com/AnglDavd/docker/tree/main/n8n)
2.  For each file within this directory (`.env`, `compose.yaml`, `README.md`), click on the file name, then click the "Raw" button to view its content.
3.  Copy the raw content and paste it into a new file with the same name on your local machine.

---


## 📋 Prerequisites

Before you begin, ensure you have the following installed:

*   [Docker](https://www.docker.com/get-started)
*   [Docker Compose](https://docs.docker.com/compose/install/)

## 🛠️ Installation & Setup

1.  **Clone this repository (if you haven't already):**
    ```bash
    git clone https://github.com/AnglDavd/docker.git
    cd docker/n8n
    ```
2.  **Configure your environment:**
    Edit the `.env` file in this directory to set your desired n8n configurations (e.g., `N8N_BASIC_AUTH_USER`, `N8N_BASIC_AUTH_PASSWORD`).
3.  **Deploy n8n:**
    ```bash
    docker-compose up -d
    ```
    This command will download the necessary Docker images, create the containers, and start n8n in the background.

## 🚀 Usage

Once n8n is running, you can access its web interface at `http://localhost:5678` (or your configured port). Start building your amazing workflows!

## 🔗 Useful Links

*   **n8n Official Website:** [https://n8n.io/](https://n8n.io/) 🌐
*   **n8n GitHub Repository:** [https://github.com/n8n-io/n8n](https://github.com/n8n-io/n8n) 🐙

---
_Happy Automating!_ ✨
