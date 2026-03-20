# 🎮 Minecraft Bedrock Server Guide (2026)

Welcome to your new Minecraft server! Here’s how to get it running.

## 🚀 Hosting Option 1: Railway (Docker + playit.gg)
Railway is great because it has a trial credit, but since Bedrock uses **UDP**, we use `playit.gg` to tunnel the traffic.

### How to Setup:
1.  **Create a GitHub Repo:** Upload `Dockerfile` and `start.sh` to a new repo.
2.  **Deploy on Railway:** Link your GitHub repo to a new Railway project.
3.  **Add Environment Variables:**
    *   `EULA`: `TRUE` (Required!)
    *   `VERSION`: `LATEST`
    *   `GAMEMODE`: `survival`
4.  **Claim Your Tunnel:**
    *   Check the **Railway Logs** after it starts.
    *   Look for a `playit.gg` link that looks like `https://playit.gg/claim/...`
    *   Click it, log in, and **Create a Minecraft Bedrock Tunnel** (UDP, port 19132).
5.  **Connect:** Playit will give you a special address (e.g., `shiny-diamond.at.ply.gg`) and a 5-digit port. Use those to join!

---

## 🏆 Hosting Option 2: The "Pro" Free Tier (Oracle Cloud)
If you want **24/7 hosting** with **24GB of RAM** for free, this is the "final boss" of hosting.
*   **Sign up for Oracle Cloud "Always Free"**.
*   Requires a credit card for identity (stays free).
*   Create an **ARM Ampere** instance (Ubuntu 22.04).
*   Use a script like [MCPH](https://github.com/mcping/mcph) or [MCScript](https://github.com/The-Cubic-Project/Minecraft-Server-Scripts) to set it up automatically.

---

## 🍦 Hosting Option 3: "Easy Mode" (Aternos)
If you just want to click a button and play with friends:
*   Go to [Aternos.org](https://aternos.org/).
*   Create a "Bedrock Edition" server.
*   **Pros:** Totally free, zero setup.
*   **Cons:** Shuts down when empty; sometimes has a queue.

---

## ⚡ Hosting Option 4: Local PC + playit.gg
You can run the server on your own computer and let friends join without opening router ports!
1.  Download the **Bedrock Dedicated Server** from Mojang.
2.  Install the **playit.gg app** on your PC.
3.  Link them, and you're good to go!

---

## 🔧 Hosting Option 5: PocketMine-MP (Open Source)
If you want to build **custom plugins** and need a fast, open-source server:
*   Go to [pmmp.io](https://pmmp.io/).
*   **Pros:** Incredible performance; high player counts; powerful PHP API.
*   **Cons:** No official "Survival" (mobs, redstone, and dimensions are very limited without plugins).

*(¬‿¬) Happy building!*
