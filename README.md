# NPC Robbery Script
A dynamic and engaging script that allows players to rob NPCs on your FiveM server using the ox_target system. It brings a new layer of gameplay, introducing risks, rewards, and police alerts.

# Installation
 - Download the script files and place them in your server's `resources` folder.
 - Add the following line to your `server.cfg`:
  
```html
ensure solaris_npcrob
```
- Restart your server or use the console commands:

```html
refresh
start solaris_npcrob
```
# Features
- Players can target NPCs for robbery using the ox_target interface.
- Random outcomes, including:
- Success: Receive money or valuable items.
- Failure: NPC may flee, call the police, or resist.
- Integrated police alert system with cd_dispatch notifications.
- Item rewards include money, weed joints, gold watches, and phones.
- Prevents robbing the same NPC multiple times.
- Includes animations for realistic robbery interactions.

# Requirements
FiveM server with Lua 5.4 support.
`ox_target`, `ox_lib`, and `ox_inventory`.
Optional: `cd_dispatch` for police alerts.


# [Preview](https://youtu.be/FNTOtZSaraU)

# Security and Customization
- Anti-cheat measures prevent repeated NPC robbery.
- Configurable reward items and amounts via `sv.lua`.
- Randomized NPC behavior adds variety to gameplay.

# Support
For assistance or suggestions, please open a ticket on our [Discord server](https://discord.gg/SWqwezXD)
