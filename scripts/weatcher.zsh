#!/bin/zsh

weather.stop () {
polybar-msg hook weatcher 1 2> /dev/null &
pid_task=($(ps aux|grep '[w]eatcher.zsh'|awk {'print $2'}))
kill $pid_task[@] 2>/dev/null &
}

weather.start () {
	while true; do
		url='http://api.openweathermap.org/data/2.5/weather?id=3451241&units=metric&APPID=3deb24b1e28ec9ef065003e22ca11506'
		wget --quiet $url --output-document /tmp/weatcher.base
		sed -i 's/\,/'\\n'/g' /tmp/weatcher.base
		temperatura=$(grep "feels_like" /tmp/weatcher.base |sed 's/.*\://'|sed 's/\"//g')
		case $(grep icon /tmp/weatcher.base|sed 's/.*\:"//g;s/"}]//g') in
			01d)icon="%{T2}%{T}";;
			02d)icon="%{T2}%{T}";;
			03d)icon="%{T2}%{T}";;
			04d)icon="%{T2}%{T}";;
			09d)icon="%{T2}%{T}";;
			10d)icon="%{T2}%{T}";;
			11d)icon="%{T2}%{T}";;
			13d)icon="%{T2}%{T}";;
			50d)icon="%{T2}%{T}";;
			01n)icon="%{T2}%{T}";;
			02n)icon="%{T2}%{T}";;
			03n)icon="%{T2}%{T}";;
			04n)icon="%{T2}%{T}";;
			09n)icon="%{T2}%{T}";;
			10n)icon="%{T2}%{T}";;
			11n)icon="%{T2}%{T}";;
			13n)icon="%{T2}%{T}";;
			50n)icon="%{T2}%{T}";;
		esac
		#<<< "$icon %{T-} $temperatura%{T3}%{T-}" > /tmp/weatcher
		<<< "$icon %{T-} $temperatura%{T3}%{T-}" > /tmp/weatcher
		polybar-msg hook weatcher 2 2>/dev/null &
		sleep 600
	done
}


case $@ in
	start) weather.start &>/dev/null &;;
	stop) weather.stop &>/dev/null &;;
esac
wq notificatime "weatcher $@!" "5000" 2>/dev/null
