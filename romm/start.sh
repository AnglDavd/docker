#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$(dirname "$0")"

# Create directories for local bind mounts (relative to script location)
mkdir -p "${SCRIPT_DIR}/mysql_data"
mkdir -p "${SCRIPT_DIR}/romm_resources"
mkdir -p "${SCRIPT_DIR}/romm_redis_data"

# Create directories for external bind mounts (absolute paths as defined in compose.yaml)
mkdir -p "/media/data/Docker/romm/assets"

# Create platform-specific subfolders within the ROMs directory
ROMS_DIR="/media/data/Docker/romm/library/roms"
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

