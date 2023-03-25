#/bin/bash

str=$(ls)

with_ext=()
ext=()

for it in $str; do
    with_ext+=("${it#*.}")
done

for it in $(echo "${str[@]}" "${with_ext[@]}" | tr ' ' '\n' | sort | uniq -u); do
    ext+=("${it#*.}")
done

for uniq_ext in $(echo "${ext[@]}" | tr ' ' '\n' | sort -u | uniq ); do
    echo "Files with $uniq_ext extensions:"
    for file in $(echo *.$uniq_ext); do
        echo -e "\t$file"
    done
done

echo "Files without extensions:"

for file in $(ls | grep -v '\.'); do
    echo -e "\t$file"
done
