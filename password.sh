#!/bin/bash

password_valid(){
    echo -e "The passwort must be no shorter than 12 characters and contains at least one: \n - digit\n - capital letter\n - special character (#$%&-_)\nFor example: Qwer3y@koLuMn \nEnter password: "
    read password

    if [[ $(echo "$password" | wc -m ) -lt 12 ]]; then
        echo "Password must be no shorter than 12 characters"
    else
        if ! [[ "$password" =~ [0-9]+ ]]; then
            echo "Password must be contains at least one digit"
        else
            if ! [[ "$password" =~ [A-Z]+ ]]; then
                echo "Password must be contains at least one capital letter"
            else
                if ! [[ "$password" =~ [\#\$\%\-\_\!\@]+ ]]; then
                    echo echo "Password must be contains at least one special character (#$%&-_)"
                else
                    echo -e "\nPassword valid"
                fi
            fi
        fi
    fi
}
