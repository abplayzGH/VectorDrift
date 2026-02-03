# VectorDrift - Game Design Document

## Core Gameplay
VectorDrift is a retro-inspired arcade space shooter with momentum-based movement and fast-paced survival gameplay.

## Feature A: Player Ship
The player ship is the core game object that the player controls.

### Controls
- Arrow Keys / WASD: Movement with momentum
- Space: Fire weapon

### Properties
- Health: 100
- Speed: Momentum-based acceleration
- Weapon: Basic laser

### Behavior
- Ship maintains momentum when keys are released
- Gradual acceleration and deceleration
- Screen wrapping (appears on opposite side when leaving bounds)
