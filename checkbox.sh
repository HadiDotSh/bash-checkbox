#!/bin/bash
# Bash Checkbox
# By @HadiDotSh

options=("$@")
max="${#}"
current=0
tput sc

for (( i=0 ; i<max ; i++ ));do
    selected[${i}]=false
done

function keyboard(){

    IFS= read -r -sn1 t
    if [[ $t == A ]]; then
        [[ "$current" == "0" ]] || current=$((current - 1))
        
    elif [[ $t == B ]]; then
        [[ "$current" == "$1" ]] || current=$((current + 1))
    
    elif [[ $t == " " ]];then
        [[ "${selected[${current}]}" == false ]] && selected[${current}]=true || selected[${current}]=false
    
    elif [[ $t == "" ]];then
        break
    fi
}

function display(){
    tput rc
    for (( i=0 ; i<max ; i++ ));do
        if [[ ${current} == "${i}" && ${selected[${i}]} == true ]];then
            printf "\e[0;90m[\e[0;93m*\e[0;90m] \e[0m\e[0;93m%s\e[0m\n" "${options[$i]}"

        elif [[ ${current} == "${i}" && ${selected[${i}]} == false ]];then
            printf "\e[0;90m[ ] \e[0m\e[0;93m%s\e[0m\n" "${options[$i]}"

        elif [[ ${selected[${i}]} == true ]];then
            printf "\e[0;90m[\e[0;93m*\e[0;90m] \e[0m\e[1;77m%s\e[0m\n" "${options[$i]}"

        elif [[ ${selected[${i}]} == false ]];then
            printf "\e[0;90m[ ] \e[0m\e[1;77m%s\e[0m\n" "${options[$i]}"
        fi
    done
}

while true;do
    display "$@"
    keyboard $((max-1))
done

export selected
export max