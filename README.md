# Graphwar

## Owned and maintained by Phạm Lê Ngọc Sơn

Graphwar is an artillery game in which players must hit enemies using mathematical functions. The trajectory of your shot is determined by the function you write, and your goal is to avoid obstacles and teammates while hitting your enemies.

## Project Structure

```
.
├── src/                    # Source code directory
│   ├── Graphwar/           # Main game client code
│   ├── GraphServer/        # Common server utilities
│   ├── GlobalServer/       # Global server implementation
│   └── RoomServer/         # Room server implementation
├── rsc/                    # Resource files (images, sounds, text)
│   ├── soldiers/           # Soldier images and assets
│   └── explosions/         # Explosion animations
├── makefile                # Build instructions
├── compile.sh              # Shell script for compilation
├── Dockerfile              # Docker configuration
└── .gitignore              # Git ignore rules
```

## Components

### Client-Side (Graphwar)
- **Graphwar.java**: Main game entry point
- **GameScreen.java**: In-game screen handling
- **PreGameScreen.java**: Pregame lobby and settings
- **MainMenuScreen.java**: Main menu interface
- **GlobalScreen.java**: Global server connection screen
- **PolishNotationFunction.java**: Mathematical function parser
- **Function.java**: Function handling and evaluation
- **GraphPlane.java**: Rendering of the game field and trajectories

### Server-Side
- **GlobalServer**: Handles global matchmaking and player registration
- **RoomServer**: Manages individual game rooms
- **GraphServer**: Common utilities for both server types

## How to Build and Run

### Requirements
- Java Development Kit (JDK) 1.6 or higher
- Make tool

### Building
To compile all components:
```
make all
```

This will generate:
- `graphwar.jar` - The game client
- `roomServer.jar` - The room server
- `globalServer.jar` - The global server

### Running the Game
To run the game client:
```
java -jar graphwar.jar
```

### Using Docker
A Docker setup is also available:

Build the Docker image:
```
make docker-image
```

Build Graphwar in a container:
```
make docker-graphwar
```

Run the client in a container:
```
make run-client
```

## Gameplay Instructions

1. **Start Game**: Launch the client and connect to a server or create a local game
2. **Join or Create Room**: Either join an existing game room or create a new one
3. **Add Players**: Add computer players or wait for other players to join
4. **Game Setup**: Choose teams and get ready for battle
5. **Writing Functions**: When it's your turn, write a mathematical function for your shot trajectory
   - Example: `2*x^2 + 3*x - 4`
   - Use `sin()`, `cos()`, `tan()`, and other mathematical operators
6. **Goal**: Use your functions to hit enemy soldiers while avoiding allies and obstacles

## Mathematical Functions

The game accepts standard mathematical notation:
- Basic operators: `+`, `-`, `*`, `/`, `^` (power)
- Functions: `sin`, `cos`, `tan`, `log`, `abs`, etc.
- Constants: `e`, `pi`
- Variables: `x` (horizontal position)

Your mathematical precision will determine your success on the battlefield!

## Contact Information

For any questions or contributions, please contact Phạm Lê Ngọc Sơn.
