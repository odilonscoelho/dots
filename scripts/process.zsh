#!/bin/zsh
process () {

    base="$(ps auxSf)"
    clear
    column \
    	--table \
    	--table-truncate=PROCESS \
    	--separator "|" \
        --table-columns PROCESS,"    PID",CPU%,MEM% \
        -o "|" \
        --table-order "    PID",MEM%,CPU%,PROCESS <<< $(\
    		awk '\
    		/taskbar start|taskbar.zsh start|weatcher.zsh|polybar *.|[w]q gpu/ \
    		{print $11, $12, $13,$14"|",$2"|",$3"|",$4"|"}' <<< "$base"\
    	)
        echo
        column \
        --table \
        --table-truncate=PROCESS \
        --separator "|" \
        --table-columns PROCESS,"    PID",CPU%,MEM% \
        -o "|" \
        --table-order "    PID",MEM%,CPU%,PROCESS <<< $(\
            awk '\
            /[m]p |[v]al/\
            {print $13,$14,$15,$16,$17"|",$2"|",$3"|",$4"|"}' <<< "$base"\
        )


   	sleep 3
	  clear
    process
}
process
