#!/usr/bin/env bats

@test "script: should find the path of an existing program" {
  run ./install_service.sh <<< "ls" # Simulate user input "ls"
  [ "$status" -eq 0 ]
  [ "$(grep "Program path found: $(which ls)" <<< "$output")" ] # Check for the correct output
}

@test "script: should error if program not found" {
  run ./install_service.sh <<< "non_existent_program"
  [ "$status" -ne 0 ]
  [ "$(grep "Error: Program 'non_existent_program' not found in PATH." <<< "$output")" ]
}