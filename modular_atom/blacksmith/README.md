# Blacksmithing Fallout Edition

## What is this module?
Ancient TG smithing code remodeled, new art, lot of new code and concepts. Now called Blacksmithing to differentiate it, and to avoid mixing with the mutated alpha stuff floating around.

Core principles:
- Ingame documentation, not code diving (advice book, new description system)
- Visual/audio feedback and mood important
- Files sorted and defines used
- All items should be useful in some way, trade offs, gimmicks added
- Recipes organized so similar sorts of items use similar recipes (the more cutting, the more folds etc) 
- EVERYTHING must have icons AND inhands. No more terrible sword pikes.
- As little reliant on outdated external stuff as possible. So no Ratvar, Narsie stuff.
- Reduced duplication and redundancy. Forging should be made on a anvil. 

## Is it complete?
Sort of. It works, but the following was planned, before time and heart ran out. This is sort of a beta, but fully functional.

- Radial menus instead of the pop up menus
- Adding more gimmicks, mood modifiers, etc
- Balancing (depends on the codebase since armor and competition varies in the extreme, pretty damn obvious. Try adjusting in increments instead of doubling values on the fly.)
- Perfecting sizing (standardized icon sizes, partway there but not all the way)
- Large icons (for 40x32 or so inhands, icons, for spears and the like mostly, ties in with above)
- Quenching affecting quality (intended 3 ways, air cooled, maybe 30s timer, -1, water temper normal, oil temper +1)
- X and Y offsets dynamic so the long items (spears etc) can have the workpiece centered then moved to the finished position once dofinish is done
- Replacing forge mittens with tongs (having both useful would be optimal)

## Whats new? 
So much its hard to list
Item quality much less impactful (this just means low quality items arent completely useless)

Light & Sound: Whole bunch of overlays, lighting, sounds added to all steps of the process

Steps: Heat ingot, place on anvil, hammer it, quench it, add finisher, done.

Repathing: Items in the module mostly shifted to root /blacksmith in the path for easier mapping and finding them in the gamepanel for admins. They are part of the same system and its good they are easy to find.

Forge mittens are sort of a stand-in for tongs, its what you use for touching hot metal, not any flimsy glove.

## Who dunnit

The base TG smithing module is still at the core, made by lolman in 2019 or something. GremlingSS refactored the code in anvil.dm in 2022.
A few items are made on old sprites as a base with moderate to heavy modification (scraptana, combat knife, anvil, bola, ring, sabre hilt)
Sounds are some from base FO13, some edited, some brand new, the anvil sounds are from royalty free sampling from videvo.net edited a lot in Audacity. Everything else is done by me.
Since I'll not be around to maintain this forever feel free to edit for fixing issues I might have missed or whatever but please keep it documented and not shitty, thanks.
- Pebbles the 2nd
