# AGENTS.md - Battery Pact

## Project Overview
- **Engine**: Godot 4.6 (GDScript)
- **Physics**: Jolt Physics

## Testing
- **Framework**: Custom BDD-style framework (`Spec`, `Runner`, `Printer`).
- **Location**: All tests must be in `tests/` and named `*_spec.gd`.
- **Running Tests**: The entry point is `test.gd`. It discovers all `*_spec.gd` files and executes them via `Printer`.
- **Writing Tests**: Define a `var spec: Spec` in the test file using `Spec.new(description, callable)`. Use `t.describe` and `t.it` for structure.

## Tooling & Verification
- **Syntax Check**: Use `godot --script path/to/file.gd --check-only` to parse a file for errors without running it.
- **Class Synchronization**: Run `godot --import` after changing `class_name` to ensure the engine updates its internal class registry.

## Conventions
- **Input Mapping**: Defined in `project.godot`. Consult this file before implementing or modifying input logic (e.g., `player_1_up`, `player_2_spawn`).
- **Styling**: Follow existing GDScript patterns.
- **State Management**: TODOs indicate a move toward a state machine pattern for game states.
