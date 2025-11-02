#!/bin/bash
# Script to add a public key to the ubuntu user's authorized_keys

# The server to connect to (replace with your server IP if needed)
SERVER_IP="98.93.156.54"

# The private key to connect to the server
PRIVATE_KEY="$HOME/.ssh/school"

# The public key to add
PUB_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN"

# Connect to server and append the key
ssh -i "$PRIVATE_KEY" ubuntu@"$SERVER_IP" "mkdir -p ~/.ssh && chmod 700 ~/.ssh && echo '$PUB_KEY' >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

echo "Public key added successfully to ubuntu@$SERVER_IP"
