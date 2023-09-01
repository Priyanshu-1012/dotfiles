#!/bin/bash

# Function to define color codes
define_color_codes() {
    colors["black"]="\e[30m"
    colors["red"]="\e[31m"
    colors["green"]="\e[32m"
    colors["yellow"]="\e[33m"
    colors["blue"]="\e[34m"
    colors["magenta"]="\e[35m"
    colors["cyan"]="\e[36m"
    colors["white"]="\e[37m"
    colors["dark_gray"]="\e[90m"
    colors["light_red"]="\e[91m"
    colors["light_green"]="\e[92m"
    colors["light_yellow"]="\e[93m"
    colors["light_blue"]="\e[94m"
    colors["light_magenta"]="\e[95m"
    colors["light_cyan"]="\e[96m"
    colors["light_gray"]="\e[97m"
}

# Prompt user for color name
#read -p "Enter a color name: " color_name
color_name=$1
# Define color codes
declare -A colors
define_color_codes

# Check if the entered color exists in the array
if [[ -n "${colors[$color_name]}" ]]; then
    color_code="${colors[$color_name]}"
    reset_code="\e[0m"

    # Print the color name and code
    # echo "Color: $color_name"
    echo -n -e "\ndark: ${color_code}hello world!${reset_code}"
    echo "   ${color_code}"

    # Check if the color has a corresponding light version
    if [[ -n "${colors[light_$color_name]}" ]]; then
        light_color_code="${colors[light_$color_name]}"
        echo -n -e "light: ${light_color_code}hello world!${reset_code}"
        echo "   ${light_color_code}"
    fi
else
    echo "Invalid color name."
fi

