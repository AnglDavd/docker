#!/bin/bash

# ------------------------------------------------------------------------------
# ROMM Setup Script
#
# This script creates the necessary host directories for ROMM's Docker volumes.
# It ensures that persistent storage locations for database data, ROMM resources,
# game library, and assets are properly set up before starting the Docker Compose stack.
#
# Environment variables are loaded from the .env file.
# ------------------------------------------------------------------------------

# Load environment variables from the .env file
# This is crucial for using ROMM_DATA_BASE and other variables defined there.
if [ -f .env ]; then
    export $(cat .env | grep -v '#' | awk '/=/ {print $1}')
else
    echo "Error: .env file not found. Please create one based on the README.md."
    exit 1
fi

# Get the directory where the script is located
SCRIPT_DIR="$(dirname "$0")"

# Create directories for local bind mounts (relative to script location)
# These are typically for database data, ROMM's internal resources, and Redis cache.
echo "Creating local bind mount directories..."
mkdir -p "${SCRIPT_DIR}/mysql_data"
mkdir -p "${SCRIPT_DIR}/romm_resources"
mkdir -p "${SCRIPT_DIR}/romm_redis_data"

# Create directories for external bind mounts (absolute paths as defined in compose.yaml)
# These paths are defined in the .env file via ROMM_DATA_BASE.
echo "Creating external bind mount directories based on ROMM_DATA_BASE..."
mkdir -p "${ROMM_DATA_BASE}/assets" # Directory for uploaded saves, states, etc.

# Create platform-specific subfolders within the ROMs directory
# This structure is recommended by ROMM for organizing your game library.
ROMS_DIR="${ROMM_DATA_BASE}/library/roms"
echo "Creating platform-specific ROMs subfolders under ${ROMS_DIR}..."
mkdir -p "${ROMS_DIR}/3do"
mkdir -p "${ROMS_DIR}/amiga"
mkdir -p "${ROMS_DIR}/arcade"
mkdir -p "${ROMS_DIR}/atari2600"
mkdir -p "${ROMS_DIR}/atari5200"
mkdir -p "${ROMS_DIR}/atari7800"
mkdir -p "${ROMS_DIR}/jaguar"
mkdir -p "${ROMS_DIR}/lynx"
mkdir -p "${ROMS_DIR}/c64"
mkdir -p "${ROMS_DIR}/colecovision"
mkdir -p "${ROMS_DIR}/neo-geo-pocket"
mkdir -p "${ROMS_DIR}/neo-geo-pocket-color"
mkdir -p "${ROMS_DIR}/dos"
mkdir -p "${ROMS_DIR}/n64"
mkdir -p "${ROMS_DIR}/nes"
mkdir -p "${ROMS_DIR}/famicom"
mkdir -p "${ROMS_DIR}/nds"
mkdir -p "${ROMS_DIR}/gbi"
mkdir -p "${ROMS_DIR}/gbc"
mkdir -p "${ROMS_DIR}/gba"
mkdir -p "${ROMS_DIR}/pc-fx"
mkdir -p "${ROMS_DIR}/psx"
mkdir -p "${ROMS_DIR}/sega32"
mkdir -p "${ROMS_DIR}/segacd"
mkdir -p "${ROMS_DIR}/gamegear"
mkdir -p "${ROMS_DIR}/sms"
mkdir -p "${ROMS_DIR}/genesis"
mkdir -p "${ROMS_DIR}/saturn"
mkdir -p "${ROMS_DIR}/snes"
mkdir -p "${ROMS_DIR}/sfam"
mkdir -p "${ROMS_DIR}/tg16"
mkdir -p "${ROMS_DIR}/virtualboy"
mkdir -p "${ROMS_DIR}/wonderswan"
mkdir -p "${ROMS_DIR}/wonderswan-color"

echo "All necessary directories created successfully!"