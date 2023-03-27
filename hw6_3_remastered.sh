#/bin/bash

#метод для получения расширений файлов
get_ext(){

    #получение файлов с расширением
    for it in $str; do
        with_ext+=("${it#*.}")
    done

    #получение расширений
    for it in $(echo "${str[@]}" "${with_ext[@]}" | tr ' ' '\n' | sort | uniq -u); do
        ext+=("${it#*.}")
    done
}

#метод для получения листинга с сортировкой, а так же его вывода в консоль
get_listing(){

    #сортировка файлов с расширениями и их вывод в консоль
    for uniq_ext in $(echo "${ext[@]}" | tr ' ' '\n' | sort -u | uniq ); do
        echo "Files with $uniq_ext extensions:"
        for file in $(echo *.$uniq_ext); do
            echo -e "\t$file"
        done
    done

    withot_ext_files=$(ls | grep -v '\.')
    
    #проверка на наличие файлов без расширений и вывод их на экран
    if [[ $withot_ext_files != "" ]]; then
        echo "Files without extensions:"
        for file in $withot_ext_files; do
            echo -e "\t$file"
        done
    fi
}

#основная функиця main
main(){
    str=$(ls)

    with_ext=()
    ext=()
    
    get_ext
    get_listing
}

main
