!wq mpy; #mpv player [xclip|$@]\
!wq smswpf; #smplayer show_preferences\
!wq smopfl; #smplayer open_file\
!wq smopdir; #smplayer open_directory\
!wq smurl; #smplayer open_url\
!wq smswpl; #smplayer show_playlist\
!wq smplopn; #smplayer pl_open\
!wq smhdrt; #smplayer restore\
!wq smstop; #smplayer stop\
!wq smplrmall; #smplayer pl_remove_all\
!wq smps; #smplayer pause\
!wq smpv; #smplayer play_prev\
!wq smnt; #smplayer play_next\
!wq smpy; #smplayer play\
!wq smplpy; #smplayer pl_play\
!wq smaddpl $@; #smplayer add-to-playlist [xclip|$@]\
!wq smlt $@; #smplayer list [$@=dir]\
!wq mplt $@; #mpv list [$@=dir]\
!wq smltdt $@; #smplayer list date [$@=dir]\
!wq mpltdt $@; #mpv list date [$@=dir]"
!wq smlt vid; #smplayer list [$@=dir]\
!wq smlt music; #smplayer list [$@=dir]\
!wq mplt vid; #mpv list [$@=dir]\
!wq mplt music; #mpv list [$@=dir]\
!wq smltdt vid; #smplayer list date [$@=dir]\
!wq smltdt music; #smplayer list date [$@=dir]\
!wq mpltdt vid; #mpv list date [$@=dir]"
!wq mpltdt music; #mpv list date [$@=dir]"
!wq ddmc $2; #down music $@=file
!wq dd $@; #down geral $@[limit=KBs & url|xclip]
!wq dd.lt $@; #down lote $@=file
!wq baixar '''[>|>>] $@'''; #>> $@ urls em files
!wq launch; #launch Polybar
!wq notificatime $@; #$1=MSG $2=TIME
!wq notifica; #notificação
!wq process; #process em terminal
!wq proc; #process em yad
!wq rede; #exibe icons de rede - terminal
!wq rofi.drun; #Rofi padrao
!wq rofi.windows; #Rofi Janelas
!wq rofi.run; #Rofi executáveis
!wq gpuinfo start; #start gpuinfo
!wq gpuinfo stop; #stop gpuinfo
!wq weatcher start; #Start Weatcher
!wq weatcher stop; #Stop Weatcher
!taskbar start; #Start Taskbar
!taskbar stop; #Stop Taskbar
!taskbar id; #View IDs windows
!wq tema dark $@; #$@={1...10}
!wq tema light $@; #$@={1...10}
!wq tema default $@; #$@={1..10}
!qw lt $@; #$@=dir
!wq ltdt $@; #@=dir
!qw ndids; #Relação de IDs
!wq nddktp $@; #$1=pos ID $2=desktop de envio
!wq mn; #mn ;)
!wq cmd; #zsh -c $@
!wq cmd2; #zsh -i $@
!wq cca; #Calculadora
!wq shll $@; #nohup $@
!wq smsf;#smplayer seletor de arquivos
!wq mpvsf;#mpv seletor de arquivos
!wq sticky;#seletor sticky=on
!wq stickyoff;#seletor sticky=off
