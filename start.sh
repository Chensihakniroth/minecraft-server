#!/bin/bash
# Start playit agent in the background
playit &

# Let the official entrypoint handle everything else!
/usr/local/bin/entrypoint-demux
