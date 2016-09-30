#!/usr/bin/env python
# last edited 30 sept 2016 - totally re-written
import time
import os

from flask import Flask
app = Flask(__name__)

@app.route('/')
def switch1_root():
	return 'Hello World! On Port 80 use /shutdownall /geyser /play/1 /play/2 /play/next /play/previous /switch1/1hour /switch1/reset'

@app.route('/shutdownall')
def shutdownall():
	os.system("/usr/local/bin/controlws/scripts/shutdownall")
	return 'shutdown all devices'

@app.route('/geyser')
def geyser():
	os.system("/usr/local/bin/controlws/scripts/geyser &")
	return 'turn geyser ON for 5 Minutes'
	
##########################
@app.route('/play/1')
def play1():
	os.system("/usr/local/bin/controlws/scripts/play1")
	return 'playing from music\play folder'

@app.route('/play/2')
def play2():
	os.system("/usr/local/bin/controlws/scripts/play2")
	return 'playing from video\play folder'

@app.route('/play/next')
def playnext():
	os.system("/usr/local/bin/controlws/scripts/next")
	return 'playing next media'

@app.route('/play/previous')
def playprevious():
	os.system("/usr/local/bin/controlws/scripts/previous")
	return 'playing previous media'

##########################
@app.route('/switch1/1hour')
def switch1a():
	os.system("/usr/local/bin/controlws/scripts/sw1_1h &")
	return 'switch1 ON for one hour'	

@app.route('/switch1/reset')
def switch1b():
	os.system("/usr/local/bin/controlws/scripts/sw1_reset")
	return 'switch1 reset timmer'	

##########################	
if __name__ == '__main__':
        app.run(host='0.0.0.0', port=80, debug=True)
