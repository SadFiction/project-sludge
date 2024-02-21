use godot::prelude::*;
struct BrainZombie;

mod brain;

#[gdextension]
unsafe impl ExtensionLibrary for BrainZombie {}