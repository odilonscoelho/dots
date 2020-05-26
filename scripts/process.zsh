#!/bin/zsh
process () {
    clear
    column \
    	--table \
    	--table-truncate=PROCESS \
    	--separator "|" \
    	--table-columns PROCESS,PID,CPU%,MEM% \
    	-o "|" \
    	--table-order PID,MEM%,CPU%,PROCESS <<< $(\
    		awk '\
    		/taskbar start|taskbar.zsh start|weatcher.zsh|polybar *.|[w]q gpu|[y]ad*/ \
    		{print $11, $12, $13,$ 14"|",$2"|",$3"|",$4"|"}' <<< $(ps auxSf)\
    	)
   	sleep 3
	clear
    process
}

#327395

[[ -z $@ ]] || $@
