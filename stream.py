import pafy
import vlc
import sys

song = pafy.new(sys.argv[1])
audio = song.getbestaudio().url
p = vlc.Instance().media_player_new()

p.set_mrl(audio)
p.play()

print("[*] Now playing: " + song.title )
input("Hit enter to exit..")
