# Feature A: Player Ship System

## Overview
Feature A implements the core player ship functionality for VectorDrift.

## Components

### Scripts
- `player_movement.gml` - Momentum-based movement system
- `player_weapon.gml` - Basic weapon firing system

### Objects
- `obj_player.gml` - Main player ship object
- `obj_laser.gml` - Player weapon projectile

## Features Implemented

### Movement System
- Momentum-based acceleration and deceleration
- Friction for realistic physics
- Maximum speed capping
- Screen wrapping at boundaries
- WASD and Arrow key support

### Weapon System
- Space bar to fire
- Rate-limited firing (10 frames between shots)
- Laser projectiles that travel upward
- Automatic projectile cleanup

### HUD
- Health display
- Score display

## Usage
The player ship can be controlled using either WASD or arrow keys for movement, and the space bar to fire weapons. The ship maintains momentum, creating a retro arcade feel similar to classic space shooters like Asteroids.

## Testing
To test Feature A:
1. Create a room in GameMaker
2. Place obj_player in the room
3. Run the game
4. Use WASD/Arrow keys to move
5. Press Space to fire
6. Verify momentum-based movement
7. Verify screen wrapping
