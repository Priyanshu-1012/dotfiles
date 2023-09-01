#!/bin/bash

curl -sS https://starship.rs/install.sh | sh

echo '## starship' >> ~/.bashrc
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# Create the directory if it doesn't exist
mkdir -p ~/.config

# Create the starship.toml file
touch ~/.config/starship.toml

# Add the lines to the file
echo '[directory]' >> ~/.config/starship.toml
echo 'truncation_length = 20' >> ~/.config/starship.toml
echo '' >> ~/.config/starship.toml
echo '[python]' >> ~/.config/starship.toml
echo "symbol=' '" >> ~/.config/starship.toml

