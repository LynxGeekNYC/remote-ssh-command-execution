# remote-ssh-command-execution
Basic shell script that connects to remote Linux servers to run commands.

Note: In this script, you need to replace "user" with the actual username you use to connect to the remote machines, and the "machines" array should contain the hostnames or IP addresses of the remote machines you want to connect to.

This script uses the ssh command to connect to each machine in the "machines" array and run the upgrade command, which is sudo apt-get update && sudo apt-get upgrade -y in this case. The script then checks the exit code of the upgrade command and outputs a message indicating whether the upgrade was successful or not.
