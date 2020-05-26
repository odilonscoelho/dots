#!/bin/zsh
#    --field= "$@" --quoted-output # yad --text %23 --title=History\ Calc --no-headers --borders=25
win () {
    yad \
        --form --mouse --title "calculadora" --borders=25 --focus-field=17 \
        --geometry=600x200 --separator=" " --columns=6 --align=center \
        --field=7:FBTN "@echo 17:'%17'\7"\
        --field=4:FBTN "@echo 17:'%17'\4"\
        --field=1:FBTN "@echo 17:'%17'\1"\
        --field=,:FBTN "@echo 17:'%17'\."\
        --field=8:FBTN "@echo 17:'%17'\8"\
        --field=5:FBTN "@echo 17:'%17'\5"\
        --field=2:FBTN "@echo 17:'%17'\2"\
        --field=0:FBTN "@echo 17:'%17'\0"\
        --field=9:FBTN "@echo 17:'%17'\9"\
        --field=6:FBTN "@echo 17:'%17'\6"\
        --field=3:FBTN "@echo 17:'%17'\3"\
        --field=.:FBTN "@echo 17:'%17'\."\
        --field=\*:FBTN "@echo 17:'%17' *"\
        --field=-:FBTN "@echo 17:'%17'-"\
        --field=/:FBTN "@echo 17:'%17'/"\
        --field=+:FBTN "@echo 17:'%17'+"\
        --field= "$1"\
        --field= "$2"\
        --field= "$memcalc"\
        --field="":LBL ''\
        --field==:FBTN "@$path_proj/calculadora.zsh calc %17 %18 %19" \
        --field="Decimais":LBL ''\
        --field=CLR:FBTN "@$path_proj/calculadora.zsh cl 17 19" \
        --field="History":FBTN '@wq notifica %19\ %17' \
        --button==$($path_proj/calculadora.zsh\ calc\ %17\ %18\ %19)
}

cl ()
{
    for i in $@; 
    do
        echo "$i:"
    done
    declare -x memcalc=""
}

calc () {
    result=$(bc <<< "scale=$2;$1")
    memcalc+=($3 $1) && declare -x memcalc
    echo 17:$result
    echo 18:$2
    echo 19:$memcalc
}

init () {
    prev=$(win "$1" "$2")
    if [[ $? -eq 0 ]]; then
        historico=($(sed -E 's/ $./ /g' <<< $(sed -E 's/^ +//g' <<< $prev)))     
        result=$(bc <<< "scale=$historico[2];$historico[1]")
        memcalc+=("$historico[1]") && declare -x memcalc
        init "$result" "$historico[2]"
    else
        memcalc=""
        exit 0
    fi
}
[[ -z $@ ]] ||$@