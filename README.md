# service-setup-script

A simple bash script to easily set up any installed program as a systemd service on Pop!_OS.

## Description

This script streamlines the process of creating systemd service unit files for programs. It prompts the user for the program name, gathers basic optional details, generates a service file, and enables/starts the service.

## Roadmap

### Phase 1: Basic Service Setup (Current Phase)

- [x] Prompt for program name.
- [ ] Lookup program path using `which`.
- [ ] Create basic systemd service unit file.
- [ ] Enable and start the service.

### Phase 2: Enhanced Service Configuration

- [ ] Add prompts for service description, working directory, user to run as, and program arguments.
- [ ] Implement more robust error handling.
- [ ] Add options to stop, restart, disable services.

## Usage

1. Make the script executable: `chmod +x setup_service.sh`
2. Run the script: `./setup_service.sh`
3. Follow the prompts.
