#!/bin/zsh

weather.stop () {
polybar-msg hook weatcher 1 &>/dev/null &
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
			01d)icon="";;
			02d)icon="";;
			03d)icon="";;
			04d)icon="";;
			09d)icon="";;
			10d)icon="";;
			11d)icon="";;
			13d)icon="";;
			50d)icon="";;
			01n)icon="";;
			02n)icon="";;
			03n)icon="";;
			04n)icon="";;
			09n)icon="";;
			10n)icon="";;
			11n)icon="";;
			13n)icon="";;
			50n)icon="";;
		esac
		# <<< "$icon %{T-} $temperatura %{T1}ºC%{T-}" > /tmp/weatcher
		<<< "%{T"$weatcherfonticon"}%{F"$weatchercoloricon"} $icon %{T-}%{F-} $temperatura %{T1}%{F"$weatchercoloricon"}ºC%{T-}%{F-}" > /tmp/weatcher
		polybar-msg hook weatcher 2 &>/dev/null
		sleep 600
	done
}


case $@ in
	start) weather.start;;
	stop) weather.stop;;
esac
wq notificatime 5000 "weatcher $@!" 2>/dev/null
