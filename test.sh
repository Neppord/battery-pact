#!/usr/bin/env bash
godot --headless --import --quiet
godot --no-header --headless -s test.gd | npx tap-mocha-reporter spec