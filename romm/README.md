# 🎮 RomM Docker Setup 🚀

This repository contains the necessary files to set up and run RomM (Retro Game Manager) using Docker Compose.

## ✨ Description

RomM is a web-based application for managing your retro game collection. This setup uses Docker Compose to orchestrate the RomM application, a MariaDB database, and a Redis instance for caching.

## 📥 How to Get This Configuration

You can get this specific RomM Docker Compose configuration without cloning the entire repository. Choose the method that suits you best:

### Method 1: Using `git archive` (Recommended)

If you have Git installed, you can download a clean `.zip` archive of just this `romm` configuration:

```bash
git archive --format=zip --output=romm-config.zip main:romm
unzip romm-config.zip
cd romm
```

### Method 2: Manual Download

You can also manually download the files:

1.  Navigate to the `romm` directory on GitHub: [https://github.com/AnglDavd/docker/tree/main/romm](https://github.com/AnglDavd/docker/tree/main/romm)
2.  Click on each file (`.env`, `compose.yaml`, `config.yml`, `README.md`, `start.sh`) and then click the "Raw" button to view its content.
3.  Copy the raw content and paste it into a new file with the same name on your local machine.
4.  Alternatively, you can download the entire `romm` directory as a `.zip` from the GitHub web interface by navigating to the `romm` directory and looking for a "Download" button (this might download the whole repo if not specifically for a subdirectory).

---


## 📋 Prerequisites

Before you begin, ensure you have the following installed on your system:

*   **Docker:** [Install Docker Engine](https://docs.docker.com/engine/install/) 🐳
*   **Docker Compose:** [Install Docker Compose](https://docs.docker.com/compose/install/) 📦

## 🚀 Setup Instructions

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

    MARIADB_ROOT_PASSWORD=<YOUR_MARIADB_ROOT_PASSWORD>
    MARIADB_DATABASE=romm
    MARIADB_USER=romm-user
    MARIADB_PASSWORD=<YOUR_MARIADB_PASSWORD>
    ```

    **❗ Important:** Replace `<YOUR_DB_PASSWORD>`, `<GENERATE_A_SECRET_KEY_WITH_openssl_rand_-hex_32>`, and `<YOUR_MARIADB_ROOT_PASSWORD>` with **strong, unique passwords** and a generated secret key.

3.  **Configure RomM (config.yml):** ⚙️

    A `config.yml` file has been created in the same directory as `compose.yaml`. This file configures RomM's behavior, including the folder structure for your ROMs. The current configuration assumes your ROMs are in a subfolder named `roms` within your mounted library path.

    ```yaml
    system:
      filesystem:
        roms_folder: roms
    ```

    You can customize this file further based on the [RomM Configuration File documentation](https://docs.romm.app/latest/Getting-Started/Configuration-File/).

4.  **Run the Setup Script:** 🛠️

    Execute the `start.sh` script. This script will automatically create all the necessary host directories for your volumes, including the platform-specific ROMs folders.

    ```bash
    ./start.sh
    ```

5.  **Starting RomM:** ▶️

    After you have configured your `.env` file with the required passwords and API keys, you can start the RomM services using Docker Compose:

    ```bash
    docker compose up -d
    ```

    The `-d` flag will run the services in detached mode (in the background).

## 🌐 Usage

Once the services are running, RomM should be accessible in your web browser at `http://localhost:80`. 🚀

## 📂 Folder Structure

RomM expects a specific folder structure for your game library. This setup is configured to use the recommended **Structure A**, where your ROMs are organized within a `roms` subfolder inside your main library path. For example:

```
/media/data/Docker/romm/library/roms/Nintendo 64/
/media/data/Docker/romm/library/roms/PlayStation/
```

For more details on RomM's folder structure, refer to the official documentation: [RomM Folder Structure](https://docs.romm.app/latest/Getting-Started/Folder-Structure/).

## ⚡ Performance Notes

This `compose.yaml` includes basic performance optimizations:

*   **Resource Limits:** CPU and memory limits are set for both `romm` and `romm-db` services to prevent resource exhaustion. 📈
*   **MariaDB Buffer Pool:** The `innodb_buffer_pool_size` for MariaDB is configured to improve database performance by caching data in memory. 💾

Feel free to adjust these values in `compose.yaml` based on your server's resources and workload.