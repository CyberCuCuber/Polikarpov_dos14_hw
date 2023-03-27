#!/bin/bash

number_valid(){
    echo -n "Enter an BY mobile telephone number to check (for example +375291234567): "
    read number

    if [[ "$number" =~ ^\+?(375|80)\(?(25|29|33|44)\)?[0-9]{7}$ ]]; then
        echo "Number '$number' valid"
    else
        echo "Number '$number' not valid"
    fi
}
