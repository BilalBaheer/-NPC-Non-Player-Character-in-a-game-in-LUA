This Lua program simulates basic behavior logic for an NPC (Non-Player Character) in a game, with the NPC alternating between two states: idle and patrolling. The logic is structured around the idea of a state machine, where the NPC randomly chooses between these states and performs corresponding actions.

Simulation:
The program continuously runs the behavior loop, where the NPC oscillates between patrolling and idling at regular intervals. The NPC patrols a set of pre-defined points (in this case, three coordinates), and after completing a patrol cycle, it will loop back to the first point.

Purpose:
This program is useful in game development where NPCs need to perform a different of behaviors based on random or predetermined conditions, providing an interactive and dynamic experience for players.
