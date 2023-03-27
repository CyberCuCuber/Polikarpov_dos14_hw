#!/bin/bash

#help для вывода информации о передаваемых ему параметрах
usage() {
    echo -e "Для использования необходимо передать 3 аругмента:\n1 аргумент - add/sub/mult/div для сложения/вычитания/умножения/деления соотвественно.\nАргументы 2 и 3 - целые числа, с которыми необходимо произвести действия\nПример: ./compute.sh mult 2 6"
    exit 1
}

#проверка аргументов арифметических действий на числа
num_args_valid(){
    if ! [[ "$1" =~ ^[0-9]+$ ]]; then
        if ! [[ "$2" =~ ^[0-9]+$ ]]; then
            echo -e "$1 и $2 не являются числами\n"
        else
            echo -e "$1 не является числом \n"
        fi
        usage
    else
        if ! [[ "$2" =~ ^[0-9]+$ ]]; then
            echo -e "$2 не является числом\n"
            usage
        fi
        
    fi
    
}

#метод для сложения
add(){
    echo $(( $1 + $2 ))
}

#метод для вычитания
sub(){
    echo $(( $1 - $2 ))
}

#метод для умножения
mult(){
    echo $(( $1 * $2 ))
}

#метод для деления
div(){
    echo $(( $1 / $2 ))
}

#основной метод
main(){

    #проверка на количество переданных аргументов
    if [[ $# -lt 3 ]]; then
        echo -e "Недостаточно аргументов\n"
        usage
    fi

    #проверка на валидность аргументов арифметических действий
    num_args_valid $2 $3
    
    #проведение арифметических действий, если команда распознана
    case $1 in
        add) add $2 $3;;
        sub) sub $2 $3;;
        mult) mult $2 $3;;
        div) div $2 $3;;
        *) echo -e "Аргумент '$1' не распознан\n"; usage;
    esac
}

main $@