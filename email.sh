#!/bin/bash

email_valid(){
    echo -n "Enter an email to check (for example qwerty@example.com): "

    read email

    if [[ "$email" =~ ^[A-Za-z0-9][A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]; then
        echo "E-Mail '$email' valid"
    else
        echo "E-Mail '$email' not valid"
    fi
}
