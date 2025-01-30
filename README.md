# Mullvad Browser Launcher

This Bash script is designed to launch the Mullvad Browser using a Docker container. It provides a simple user interface with colorful options for ease of use.

---

## Prerequisites

Before running the script, ensure the following requirements are met:

- **Docker** is installed and running.
- You have permissions to run Docker containers.
- The `docker` command is available in your `$PATH`.

---

## Installation

1. Download the script or copy the code into a file, e.g., `launcher.sh`.
2. Make the file executable:
   ```bash
   chmod +x launcher.sh
Usage
Run the script with:

bash
Copier
Modifier
./launcher.sh
Choose one of the following options:

1: Launches the Mullvad Browser in a Docker container.
2: Exits the script.
Features
Header
Displays a visually appealing header with colors to enhance the user experience.

Display Options
Lists the available actions the user can perform.

Launch Mullvad Browser
Starts the Docker container with the following parameters:

Ports: 3000:3000, 3001:3001
Volume: /mullvad-browser is used as the configuration path.
Security Options: seccomp=unconfined is used for extended permissions.
Shared Memory: Set to 7GB for better browser performance.
Sample Output
plaintext
Copier
Modifier
***************************************************
*             Mullvad Browser Launcher            *
***************************************************

Please select an option:
1. Launch Mullvad Browser
2. Exit
Notes
The script does not automatically check if Docker is installed or running. If issues occur, verify your Docker installation and permissions.
The browser is launched in the background. Use docker ps to check the container's status.
Troubleshooting
Container won't start:

Ensure the Docker daemon is running.
Verify that the container ports (3000, 3001) are available.
Invalid option:

Enter a number between 1 and 2 to select a valid action.
