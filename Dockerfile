FROM itzg/minecraft-bedrock-server

# Install playit.gg agent for UDP tunneling
RUN apt-get update && apt-get install -y curl gnupg
RUN curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
RUN echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | tee /etc/apt/sources.list.d/playit-cloud.list
RUN apt-get update && apt-get install -y playit

# Copy our startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Minecraft Bedrock default port
EXPOSE 19132/udp

ENTRYPOINT ["/start.sh"]
