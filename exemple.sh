#!/bin/bash
# Exemple for Bash Checkbox
# By @HadiDotSh

source checkbox.sh "Option 1" "Option 2" "Option 3" "Option 4"

printf "\n"
for (( i=0 ; i < max ; i++ ));do
    printf "\e[0;90m[\e[0;93m%s\e[0;90m] \e[0m\e[1;77m%s\e[0m\n" "${i}" "${selected[$i]}"
done

if [[ ${selected[$((max-1))]} == true ]];then
    printf "\n\e[0m\e[1;77mYou have selected the last option.\e[0m\n"
else
    printf "\n\e[0m\e[1;77mYou did not select the last option.\e[0m\n"
fi
