#!/bin/bash

. ./email.sh
. ./password.sh
. ./tel.sh
. ./url.sh


PS3="What you will to validate? Select number (enter 5 to exit): "

select menu_point in Email Telephone URL Password Exit
do
    case $REPLY in
    1) email_valid ;;
    2) number_valid ;;
    3) url_valid ;;
    4) password_valid;;
    5) exit;;
    *) echo "Invalid argument. Argument must be 1-5";;
    esac
done