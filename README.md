# WASD-Detection
Accurate WASD detection for Minecraft datapacks.

## Download
Download the latest version from **Releases**.

#### Current version
1.0

#### Minecraft version
Java Edition 1.19.2

## How to Use the Data pack

The WASD detection works as an in-game *predicate* that can be accessed through /execute commands, and or player selectors.

```
/execute as @a if predicate wasd:w run say pressed w
```

```
/execute as @a[predicate=wasd:w] run say pressed w
```
Either of these will result in a message in chat saying "pressed w" when the player walks forward.

### List of preciates
(All of these will have a prefix of `wasd:`)

**wasd:w** = if the player walks forward

**wasd:a** = if the player walks left

**wasd:s** = if the player walks right

**wasd:d** = if the player walks backward

**wasd:moving** = if the player pressed any of the four directions

**wasd:space** = if the player moves upward

**wasd:falling** = if the player moves downward

**wasd:shift** = if the player presses SHIFT

## Installation

#### Method 1 (Pre-made world)
1. Unzip the file downloaded
2. Copy the WASD Detection 1.19.2 folder
3. Locate to your .minecraft/saves/\<worldname\>/datapacks
4. Paste the folder
5. Enter your Minecraft world and type /reload
6. A message should pop up that says "WASD Detection Installed"

#### Method 2 (Create new world)
1. Unzip the file downloaded
2. In the Create new world screen, click the "Datapacks" button
3. Drag and drop the WASD Detection 1.19.2 folder
4. Apply the datapack
5. Create new world
