#!/bin/bash

# Airplane frames
frames=(
"__  _\n\ `/ |\n \__\`!\n / ,' \`-.__________________\n'-'\\_____                LI\`-.\n   <____()-=O=O=O=O=O=[]====--)\n     \`.___ ,-----,_______...-'\n          /    .'\n         /   .'\n        /  .'         hjw\n        \`-'" 
"      __  _\n     \ `/ |\n      \__\`!\n      / ,' \`-.__________________\n     '-'\\_____                LI\`-.\n        <____()-=O=O=O=O=O=[]====--)\n          \`.___ ,-----,_______...-'\n               /    .'\n              /   .'\n             /  .'         hjw\n             \`-'" 
"          __  _\n         \ `/ |\n          \__\`!\n         / ,' \`-.__________________\n         '-'\\_____                LI\`-.\n            <____()-=O=O=O=O=O=[]====--)\n              \`.___ ,-----,_______...-'\n                   /    .'\n                  /   .'\n                 /  .'         hjw\n                 \`-'" 
"              __  _\n             \ `/ |\n              \__\`!\n             / ,' \`-.__________________\n             '-'\\_____                LI\`-.\n                <____()-=O=O=O=O=O=[]====--)\n                  \`.___ ,-----,_______...-'\n                       /    .'\n                      /   .'\n                     /  .'         hjw\n                     \`-'" 
"                  __  _\n                 \ `/ |\n                  \__\`!\n                 / ,' \`-.__________________\n                 '-'\\_____                LI\`-.\n                    <____()-=O=O=O=O=O=[]====--)\n                      \`.___ ,-----,_______...-'\n                           /    .'\n                          /   .'\n                         /  .'         hjw\n                         \`-'" 
"                      __  _\n                     \ `/ |\n                      \__\`!\n                     / ,' \`-.__________________\n                     '-'\\_____                LI\`-.\n                        <____()-=O=O=O=O=O=[]====--)\n                          \`.___ ,-----,_______...-'\n                               /    .'\n                              /   .'\n                             /  .'         hjw\n                             \`-'" 
"                          __  _\n                         \ `/ |\n                          \__\`!\n                         / ,' \`-.__________________\n                         '-'\\_____                LI\`-.\n                            <____()-=O=O=O=O=O=[]====--)\n                              \`.___ ,-----,_______...-'\n                                   /    .'\n                                  /   .'\n                                 /  .'         hjw\n                                 \`-'" 
"                              __  _\n                             \ `/ |\n                              \__\`!\n                             / ,' \`-.__________________\n                             '-'\\_____                LI\`-.\n                                <____()-=O=O=O=O=O=[]====--)\n                                  \`.___ ,-----,_______...-'\n                                       /    .'\n                                      /   .'\n                                     /  .'         hjw\n                                     \`-'" 
)

# Function to clear screen and move cursor to top-left
clear_screen() {
  echo -e "\033[2J\033[H"
}

# Function to display the airplane
display_plane() {
  for frame in "${frames[@]}"; do
    clear_screen
    echo -e "$frame"
    sleep 1
  done
}

# Main loop
while true; do
  display_plane
done