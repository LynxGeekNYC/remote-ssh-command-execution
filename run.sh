#!/usr/bin/expect

# List of remote machines
set machines [list machine1 machine2 machine3]

# Password for the remote user
set password "your-password"

# Loop through each machine
foreach machine $machines {
  spawn ssh user@$machine "sudo apt-get update && sudo apt-get upgrade -y"

  # Provide password when prompted
  expect "password:"
  send "$password\r"

  expect {
    "upgraded," {
      puts "Upgrade on $machine completed successfully"
    }
    "Error" {
      puts "Upgrade on $machine failed"
    }
  }
}
