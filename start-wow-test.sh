#!/usr/bin/env bash
cd "$(dirname "$0")"
# Local test of Throne and Liberty + World of Warcraft in one server. Data goes to ./test-data only.
export MEMBER_PASSCODE="${MEMBER_PASSCODE:-guild}"
export OFFICER_PASSCODE="${OFFICER_PASSCODE:-officer}"
export PORT="${PORT:-3000}"
export DATA_DIR="$PWD/test-data/shared"
export GAMES_FILE="$PWD/games.demo.json"
command -v node >/dev/null 2>&1 || { echo "Node.js is not installed. Get the LTS version from https://nodejs.org/en/download"; exit 1; }
echo "Throne and Liberty:  http://localhost:$PORT/   (also /tl/)"
echo "World of Warcraft:   http://localhost:$PORT/wow/"
echo "Passcode 'officer' = officer tools, 'guild' = normal member. Delete ./test-data to reset."
node server.js
