#!/usr/bin/env bash
godot --headless -s test.gd | npx tap-mocha-reporter spec