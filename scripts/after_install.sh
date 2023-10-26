#!/bin/sh
# Change to the project directory
cd /home/ubuntu/my-app/learningpipeline/

# Find the full path to npm
NPM_PATH=$(which npm)

# Print the Node.js version
node_version=$("$NPM_PATH" --version)
echo "Node.js version: $node_version"

# Use npm to clean the cache
"$NPM_PATH" cache clean -f

# Use npm to install node modules
"$NPM_PATH" i
