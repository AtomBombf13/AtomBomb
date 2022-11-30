# Blacksmithing Fallout Edition v.1.4

## What is this module?
Ancient TG smithing code remodeled, new art, lot of new code and concepts. Now called Blacksmithing to differentiate it, and to avoid mixing with the mutated alpha stuff floating around. Changelog at the end.

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
Sort of. It works, but the following was planned, before time and heart ran out.

- Radial menus instead of the pop up menus
- Adding more gimmicks, mood modifiers, etc
- Balancing (depends on the codebase since armor and competition varies in the extreme, pretty damn obvious. Try adjusting in increments instead of doubling values on the fly.)
- Perfecting sizing (standardized icon sizes, partway there but not all the way)
- Quenching affecting quality (intended 3 ways, air cooled, maybe 30s timer, -1, water temper normal, oil temper +1)
- X and Y offsets dynamic so the long items (spears etc) can have the workpiece centered then moved to the finished position once dofinish is done
- Replacing forge mittens with tongs (having both useful would be optimal)

If you plan on adding or changing stuff ADD changelog to the end of this readme. Adjust damage by changing the define values first, not by messing with the formulas, for obvious reasons.

## Whats new? 
So much its hard to list
Item quality much less impactful (this just means low quality items arent completely useless)

Light & Sound: Whole bunch of overlays, lighting, sounds added to all steps of the process

Steps: Heat ingot, place on anvil, hammer it, quench it, add finisher, done.

Repathing: Items in the module mostly shifted to root /blacksmith in the path for easier mapping and finding them in the gamepanel for admins. They are part of the same system and its good they are easy to find.

Forge mittens are sort of a stand-in for tongs, its what you use for touching hot metal, not any flimsy glove.

Basic idea with the belt slot/back slot for weapons is that it makes sheath objects redundant, just make the correct slots for the item.

## Known issues

The anvil refactor Gremling did solved some issues but sadly had some side-effects, the elusive overlay not being cut properly on live servers being the main one. Cannot see any solution to it currently.
(when a workpiece is finished sometimes the overlay remains on the anvil, and occasionally the same happens when quenching.)
Armor pieces made from smithing are not affected by quality and material currently. This is WAD but a bit crude.
Some tools do not inherit the force calculated on quality correctly, notes in finished items about this.

## Who dunnit

The base TG smithing module is still at the core, made by lolman in 2019 or something. GremlingSS refactored the code in anvil.dm in 2022.
Sounds are some from base FO13, some edited, some brand new, the anvil sounds are from royalty free sampling from videvo.net edited a lot in Audacity.
Code: legacy smithing code by lolman and refactored anvil code by GremlingSS at the base, major overhaul and all added content made by me.
Sprites: furnace, sandstone furnace, chain, leatherstrip, dagger, machete, gladius, macheter, waki, saw, sabre, sword, spatha, katana, spear, lance, trident, crusher, mace, univeral tool, axe, waraxe, scrapblade, javelin, bola, knife, hammer, sledgehammer, shovel, pickaxe, prospect, crowbar, ball and chain, ingot, anvil, tablevil, sandvil, overlays, blacksmith mittens, armor pieces, smithed armor, quenching through, metalworking bench - Pebbles the 2nd
(Waraxe is a bit of special one, its inspired by the warhoned axe someone made, but thats just a recolored version of my fireaxe with pieces from my lance sprite added, so its all my stuff anyways in the end. Inspiration credit is due though.)
sabre hilt, bowie blade, longsword(scraptana), ring, bola reuses a fair bit from the legacy sprites, so inspiration credit to their makers which sadly is not known.

Since I'll not be around to maintain this forever feel free to edit for fixing issues I might have missed or whatever but please keep it documented and not shitty, thanks.
- Pebbles the 2nd

v1.2 - Peb
- Added armor pieces, fixed some errors impacting labeling

v1.3 - Peb
- Added smithed armor
- Adjusted some volumes, quality cutoff points in anvil.dm

v1.4 - Peb
- New furnace art, metal and sandstone, with smoke and such.
- Added new sledgehammer art, so it matches the stuff in the module since its connected
- Added all missing inhands, spears now proper long
- Added some minor shading on a bunch of icons
- Adjusted pickaxe quality speed/range modifiers, was insanely good.
- Added the metal workbench + updated its art since it was made as a part of the module originally
- Changed notsword to workpiece because why God
- Refactored smithed twohanders so the correct art loads when wielded even in stupid Eris code