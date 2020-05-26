#!/bin/zsh

pul () {
ffmpeg -video_size 3840x2160 -framerate 60 -f x11grab -i :0.0+0+0 -f pulse -ac 2 -i default output.mp4	
}
als () {
ffmpeg -video_size 3840x2160 -framerate 60 -f x11grab -i :0.0+0+0 -f alsa -ac 2 -i hw:0 output.mkv
}
def () {
ffmpeg -video_size 3840x2160 -framerate 60 -f x11grab -i :0.0+0+0 output.mp4
}
