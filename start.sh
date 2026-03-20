#!/bin/bash
echo "--- DEBUG: Checking for playit ---"
which playit
playit --version

echo "--- STARTING PLAYIT.GG AGENT ---"
# Run playit in the background and redirect output to a file we can read
playit > /tmp/playit.log 2>&1 &

# Wait a bit longer and check the log file
sleep 10
echo "--- PLAYIT LOG OUTPUT ---"
cat /tmp/playit.log
echo "--- END PLAYIT LOG ---"

echo "--- STARTING MINECRAFT SERVER ---"
exec /opt/bedrock-entry.sh
