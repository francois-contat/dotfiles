#!/usr/bin/python3
'''
    Beta version of getting playing of pause spotify/player status
'''
import dbus
import sys

playing_matrix = {'stopped': '⏹', 'Playing': '▶', 'Paused' : '॥'}
playing_status = 'stopped'
session_bus = dbus.SessionBus()
bus_data = ("org.mpris.MediaPlayer2.spotify", "/org/mpris/MediaPlayer2")
try:
    spotify_bus = session_bus.get_object(*bus_data)
except:
    print(playing_matrix[playing_status])
    sys.exit(0)

interface = dbus.Interface(spotify_bus, "org.freedesktop.DBus.Properties")
playing_status = interface.Get("org.mpris.MediaPlayer2.Player", "PlaybackStatus")

print(playing_matrix[playing_status])
