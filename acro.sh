#!/bin/bash

#метод для получения информации о работе скрипта и передаваемых ему аргументов
usage(){
    echo -e "Укажите строку, из которой необходимо получить акроним.\nПример: ./acro.sh what is it"
    exit 1
}

#метод для проверки наличия переданных аргументов 
args_valid(){
    if [[ $# -lt 1 ]]; then
        echo -e "Не указана строка\n"
        usage
    fi
}

#метод для получения акронима
get_acronym(){
    for word in $(echo "$*" | tr '-' ' ' ); do
        acronym+="${word:0:1}"
    done

    echo "$acronym" | tr '[:lower:]' '[:upper:]'
}

#основной метод main
main(){
    args_valid $@
    get_acronym $@
}

main $@