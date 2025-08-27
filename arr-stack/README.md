# 🚀 The Ultimate ARR Stack Docker Compose Setup! 🎬🎶📚

Welcome to your one-stop solution for managing your media library with ease! This directory provides a robust and flexible Docker Compose setup for the essential ARR stack applications. Get ready to automate your media collection like a pro! ✨

## ✨ Features

This stack includes:

*   **Sonarr:** 📺 Your smart TV series management tool. Automatically grabs, sorts, and renames your favorite shows!
*   **Radarr:** 🎥 The perfect companion for your movie collection. Finds, downloads, and organizes movies effortlessly!
*   **Lidarr:** 🎵 For the music lovers! Manages your music library, keeping it tidy and complete.
*   **Deluge:** 📥 A powerful and lightweight BitTorrent client, ready for all your downloading needs.
*   **Prowlarr:** 🔍 Your indexer manager. Integrates all your indexers with your ARR apps for seamless searching.
*   **Bazarr:** 🗣️ Automatically downloads and pairs subtitles with your movies and TV shows. Never miss a word!

## 📥 How to Get This Configuration

To get this specific ARR Stack Docker Compose configuration, you can manually copy its content:

1.  Navigate to the `arr-stack` directory on GitHub: [https://github.com/AnglDavd/docker/tree/main/arr-stack](https://github.com/AnglDavd/docker/tree/main/arr-stack)
2.  For each file within this directory (`.env`, `compose.yaml`, `README.md`), click on the file name, then click the "Raw" button to view its content.
3.  Copy the raw content and paste it into a new file with the same name on your local machine.

---

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

*   [Docker](https://www.docker.com/get-started) 🐳
*   [Docker Compose](https://docs.docker.com/compose/install/) 📦

## 🛠️ Installation & Setup

Follow these simple steps to get your ARR stack up and running:

### Step 1: Configure Your Environment Variables ⚙️

Before launching, you need to tell Docker Compose where to store your data and who's running the show!

1.  Create a new file named `.env` in this very directory (`arr-stack/`).
2.  Populate it with the following essential variables. Remember to replace the placeholder values with your actual details!

    ```
    PUID=1000
    PGID=1000
    TZ=America/Santiago
    ARRSTACK_DOWNLOADS_BASE=/path/to/your/downloads/base
    ARRSTACK_CONFIG_BASE=/path/to/your/config/base
    ```

    *   `PUID` (Process User ID) & `PGID` (Process Group ID): These define the user and group permissions for the applications inside the containers. To find your current `PUID` and `PGID`, simply open your terminal and type `id -u` and `id -g` respectively. For example, if your username is `ainu`, you might see `1000` for both.
    *   `TZ` (Timezone): Set this to your local timezone (e.g., `America/Santiago`, `Europe/London`). This ensures all your media events are timestamped correctly! 🌍
    *   `ARRSTACK_DOWNLOADS_BASE`: This is the **absolute path** on your host machine where all your downloaded media (movies, TV shows, music) will reside. This will be the root directory for your media library. 📂
    *   `ARRSTACK_CONFIG_BASE`: This is the **absolute path** on your host machine where each application will store its configuration files. Keeping these separate makes backups and migrations a breeze! 💾

    **🚨 Important:** You MUST replace `/path/to/your/downloads/base` and `/path/to/your/config/base` with the actual, absolute paths you wish to use on your system. These paths are crucial for the services to store their data correctly.

### Step 2: Launch the Stack! 🚀

Once your `.env` file is ready, it's time for liftoff!

1.  Open your terminal.
2.  Navigate to this `arr-stack/` directory:
    ```bash
    cd path/to/your/arr-stack/directory
    ```
    (Replace `path/to/your/arr-stack/directory` with the actual path where your `compose.yaml` and `.env` files are located).
3.  Execute the magic command to bring your services to life in the background:
    ```bash
    docker compose up -d
    ```
    The `-d` flag means "detached" mode, so the services will run quietly in the background, leaving your terminal free! 🧘‍♀️

## 🌐 Accessing Your Services: The Web UIs

After a few moments, your services should be up and running! You can access their web interfaces through your browser:

*   **Sonarr:** `http://your-docker-host-ip:8989` 📺
*   **Radarr:** `http://your-docker-host-ip:7878` 🎥
*   **Lidarr:** `http://your-docker-host-ip:8686` 🎵
*   **Deluge:** `http://your-docker-host-ip:8112` (Web UI) 📥
*   **Prowlarr:** `http://your-docker-host-ip:9696` 🔍
*   **Bazarr:** `http://your-docker-host-ip:6767` 🗣️

**💡 Pro Tip:** Replace `your-docker-host-ip` with the actual IP address or hostname of the machine where Docker is running (e.g., `localhost` if running on your local machine, or the server's IP address).

## 🛑 Stopping the Stack: Taking a Break

When you need to stop all the running services (e.g., for maintenance or shutting down your machine), simply run:

```bash
docker compose down
```
This command will gracefully stop and remove the containers, networks, and volumes created by `docker compose up`.

## 🔄 Updating Your Applications: Stay Fresh!

To ensure you're always running the latest and greatest versions of your ARR stack applications, follow these steps:

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

*   **LinuxServer.io:** [https://www.linuxserver.io/](https://www.linuxserver.io/) 🐧 (Source for most Docker images in this stack)

---
_Enjoy your automated media management journey!_ 🎉