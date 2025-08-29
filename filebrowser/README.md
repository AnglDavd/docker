# 🚀 File Browser Docker Compose Setup 🚀

Welcome to the File Browser Docker Compose setup! This configuration allows you to quickly deploy and manage your File Browser instance using Docker. File Browser is a web-based file manager that lets you upload, download, edit, and manage your files and folders.

## ✨ Features

*   **Easy Deployment:** 🐳 Get File Browser up and running with a single command.
*   **Persistent Data:** 💾 Your files and configuration are safely stored in host-mounted directories.
*   **Customizable:** ⚙️ Easily modify environment variables and settings to fit your needs.
*   **Secure:** 🔒 Pre-configured with an admin password for immediate security.

## 📥 How to Get This Configuration

To get this specific File Browser Docker Compose configuration, you can manually copy its content:

1.  Navigate to the `filebrowser` directory on GitHub: [https://github.com/AnglDavd/docker/tree/main/filebrowser](https://github.com/AnglDavd/docker/tree/main/filebrowser)
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
    cd docker/filebrowser
    ```
2.  **Review the configuration:**
    Unlike other services, this one does not use a `.env` file. All configurations are in `compose.yaml`. You might want to:
    *   Change the `FILEBROWSER_ADMIN_PASSWORD`.
    *   Adjust the `TZ` (timezone).
    *   Modify the volume mappings to point to your desired directories.

3.  **Create the configuration file:**
    Create a `data` directory and inside it, create a `config.yml` file. You can use the provided `config.yml` in this directory as a template.

4.  **Deploy File Browser:**
    ```bash
    docker compose up -d
    ```
    This command will download the necessary Docker image, create the container, and start File Browser in the background.

## 🚀 Usage

Once File Browser is running, you can access its web interface at `http://localhost:1004`. Log in with the username `admin` and the password you set in `compose.yaml`.

## 🔄 Updating Your Application: Stay Fresh!

To ensure you're always running the latest and greatest version of File Browser, follow these steps:

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


*   **File Browser GitHub Repository:** [https://github.com/gtsteffaniak/filebrowser](https://github.com/gtsteffaniak/filebrowser) 🐙

---
_Happy File Browsing!_ ✨
