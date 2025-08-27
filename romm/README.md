# 🎮 RomM Docker Setup 🚀

This repository contains the necessary files to set up and run RomM (Retro Game Manager) using Docker Compose.

## ✨ Features

*   **Centralized Management:** 🕹️ Organize and manage your entire retro game collection from a single web interface.
*   **Rich Metadata:** 📚 Automatically fetch game details, cover art, screenshots, and more from various online sources.
*   **Persistent Data:** 💾 Your game library data, metadata, and configurations are safely stored in Docker volumes.
*   **Customizable:** ⚙️ Easily configure database settings, API keys for metadata providers, and ROM folder structures via environment variables and a dedicated config file.
*   **Optimized Performance:** ⚡ Includes Docker Compose configurations with resource limits and database optimizations for smooth operation.

## 📥 How to Get This Configuration

To get this specific RomM Docker Compose configuration, you can manually copy its content:

1.  Navigate to the `romm` directory on GitHub: [https://github.com/AnglDavd/docker/tree/main/romm](https://github.com/AnglDavd/docker/tree/main/romm)
2.  For each file within this directory (`.env`, `compose.yaml`, `config.yml`, `README.md`, `start.sh`), click on the file name, then click the "Raw" button to view its content.
3.  Copy the raw content and paste it into a new file with the same name on your local machine.

---


## 📋 Prerequisites

Before you begin, ensure you have the following installed on your system:

*   **Docker:** [Install Docker Engine](https://docs.docker.com/engine/install/) 🐳
*   **Docker Compose:** [Install Docker Compose](https://docs.docker.com/compose/install/) 📦

## 🛠️ Installation & Setup

Follow these steps to get your RomM instance up and running:

1.  **Navigate to the Project Directory:** 📁

    ```bash
    cd /path/to/your/romm/directory
    ```

    (Replace `/path/to/your/romm/directory` with the actual path where `compose.yaml` and `start.sh` are located).

2.  **Configure Environment Variables:** 🔑

    Create a `.env` file in the same directory as `compose.yaml` and populate it with your environment variables. You will need to generate a `ROMM_AUTH_SECRET_KEY` and set secure passwords for MariaDB.

    ```env
    DB_HOST=romm-db
    DB_NAME=romm
    DB_USER=romm-user
    DB_PASSWD=<YOUR_DB_PASSWORD>
    ROMM_AUTH_SECRET_KEY=<GENERATE_A_SECRET_KEY_WITH_openssl_rand_-hex_32>
    SCREENSCRAPER_USER=
    SCREENSCRAPER_PASSWORD=
    RETROACHIEVEMENTS_API_KEY=
    STEAMGRIDDB_API_KEY=
    HASHEOUS_API_ENABLED=true

    ROMM_DATA_BASE=<YOUR_ROMM_DATA_BASE_PATH> # 📂 IMPORTANT: Set the base path for your ROMM data (library, assets).

    MARIADB_ROOT_PASSWORD=<YOUR_MARIADB_ROOT_PASSWORD>
    MARIADB_DATABASE=romm
    MARIADB_USER=romm-user
    MARIADB_PASSWORD=<YOUR_MARIADB_PASSWORD>
    ```

    **❗ Important:** Replace `<YOUR_DB_PASSWORD>`, `<GENERATE_A_SECRET_KEY_WITH_openssl_rand_-hex_32>`, `<YOUR_MARIADB_ROOT_PASSWORD>`, `<YOUR_MARIADB_PASSWORD>`, and `<YOUR_ROMM_DATA_BASE_PATH>` with **strong, unique passwords**, a generated secret key, and your actual desired base path for ROMM data.

3.  **Configure RomM (config.yml):** ⚙️

    A `config.yml` file has been created in the same directory as `compose.yaml`. This file configures RomM's behavior, including the folder structure for your ROMs. The current configuration assumes your ROMs are in a subfolder named `roms` within your mounted library path.

    ```yaml
    system:
      filesystem:
        roms_folder: roms # Subfolder within your mounted library for ROMs

    metadata:
      sources:
        - name: screenscraper # Primary metadata source
          enabled: true
          priority: 1
        - name: steamgriddb # Artwork source
          enabled: true
          priority: 2
        - name: igdb # Alternative metadata source
          enabled: true
          priority: 3
    ```

    You can customize this file further based on the [RomM Configuration File documentation](https://docs.romm.app/latest/Getting-Started/Configuration-File/).

4.  **Run the Setup Script:** 🛠️

    Execute the `start.sh` script. This script will automatically create all the necessary host directories for your volumes, including the platform-specific ROMs folders.

    ```bash
    ./start.sh
    ```

5.  **Starting RomM:** ▶️

    Once your `.env` file is configured, you can launch the RomM services using Docker Compose:

    ```bash
      docker compose up -d
    ```

    The `-d` flag will run the services in detached mode (in the background).

## 🌐 Usage

Once the services are running, RomM should be accessible in your web browser at `http://localhost:80`. 🚀

## 🔄 Updating Your Applications: Stay Fresh!

To ensure you're always running the latest and greatest versions of RomM and its dependencies, follow these steps:

1.  Pull the newest Docker images:
    ```bash
    docker compose pull
    ```
2.  Recreate and start the containers with the new images:
    ```bash
    docker compose up -d
    ```
    This will download any updated images and restart your services, applying the new versions while preserving your data! ✨

## 📂 Folder Structure

RomM expects a specific folder structure for your game library. This setup is configured to use the recommended **Structure A**, where your ROMs are organized within a `roms` subfolder inside your main library path. For example, if your `ROMM_DATA_BASE` is `/opt/romm_data`, your ROMs might be located at:

```
/opt/romm_data/library/roms/Nintendo 64/
/opt/romm_data/library/roms/PlayStation/
```

For more details on RomM's folder structure, refer to the official documentation: [RomM Folder Structure](https://docs.romm.app/latest/Getting-Started/Folder-Structure/).

## ⚡ Performance Notes

This `compose.yaml` includes basic performance optimizations:

*   **Resource Limits:** CPU and memory limits are set for both `romm` and `romm-db` services to prevent resource exhaustion. 📈
*   **MariaDB Buffer Pool:** The `innodb_buffer_pool_size` for MariaDB is configured to improve database performance by caching data in memory. 💾

Feel free to adjust these values in `compose.yaml` based on your server's resources and workload.