# 🚀 WordPress Docker Compose Setup 🚀

Welcome to the WordPress Docker Compose setup! This configuration allows you to quickly deploy and manage a complete WordPress environment using Docker, including a database, phpMyAdmin, and automated backups.

## ✨ Features

*   **Easy Deployment:** 🐳 Get WordPress up and running with a single command.
*   **Complete Stack:** 📦 Includes WordPress, MySQL, phpMyAdmin, and a database backup service.
*   **Persistent Data:** 💾 Your WordPress files, database, and backups are safely stored in host-mounted directories.
*   **Customizable:** ⚙️ Easily modify environment variables and PHP settings to fit your needs.

## 📥 How to Get This Configuration

To get this specific WordPress Docker Compose configuration, you can manually copy its content:

1.  Navigate to the `wordpress` directory on GitHub: [https://github.com/AnglDavd/docker/tree/main/wordpress](https://github.com/AnglDavd/docker/tree/main/wordpress)
2.  For each file within this directory, click on the file name, then click the "Raw" button to view its content.
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
    cd docker/wordpress
    ```
2.  **Configure your environment:**
    Edit the `.env` file in this directory. **This is crucial!** You'll need to set strong, secure passwords for your database:
    ```
    DB_NAME="wordpress"
    DB_USER="wp"
    DB_PASSWORD="your-strong-password"
    DB_ROOT_PASSWORD="your-strong-root-password"
    ```

3.  **Create configuration files and directories:**
    Before starting the containers, you need to create the `config` directory and the necessary empty files within it.
    ```bash
    mkdir config
    touch ./config/wp_php.ini
    touch ./config/pma_php.ini
    touch ./config/pma_config.php
    ```

4.  **Deploy WordPress:**
    ```bash
    docker compose up -d
    ```
    This command will download the necessary Docker images, create the containers, and start the entire WordPress stack in the background.

## 🚀 Usage

*   **WordPress:** Once the stack is running, you can access your WordPress site at `http://localhost:5010` and complete the installation process.
*   **phpMyAdmin:** You can access phpMyAdmin at `http://localhost:5011`.
*   **Backups:** Database backups will be automatically created in the `backups` directory.

## 🔄 Updating Your Applications: Stay Fresh!

To ensure you're always running the latest and greatest versions of the services in this stack, follow these steps:

1.  Pull the newest Docker images:
    ```bash
    docker compose pull
    ```
2.  Recreate and start the containers with the new images:
    ```bash
    docker compose up -d
    ```
    This will download any updated images and restart your services, applying the new versions while preserving your data! ✨

## 🚀 Optional Enhancements

*   **Redis Caching:** For improved performance, Redis caching is pre-configured in `compose.yaml`. You will need to install a Redis object cache plugin in WordPress (e.g., "Redis Object Cache") and configure it to use the Redis service.

## 🔗 Useful Links

*   **WordPress Official Website:** [https://wordpress.org/](https://wordpress.org/) 🌐
*   **phpMyAdmin Official Website:** [https://www.phpmyadmin.net/](https://www.phpmyadmin.net/) 🐘
*   **MySQL Official Website:** [https://www.mysql.com/](https://www.mysql.com/) 🐬

---
_Happy Blogging!_ ✨
