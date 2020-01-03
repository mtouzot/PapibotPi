#!/usr/bin/env python
#-*- coding:latin-1 -*-
import twitter
import sys
import os
import json
import subprocess

import sys
reload(sys)
sys.setdefaultencoding('utf8')

def tweet(keys,message):
	"""Connect to the twitter bot, do the sql request to get the message
	and tweet"""

	print("[Authentification in progress]")
	api = twitter.Api(consumer_key = keys["consumer_key"],
			  consumer_secret = keys["consumer_secret"],
			  access_token_key = keys["access_token_key"],
			  access_token_secret = keys["access_token_secret"])

	print("[Authentification done] Twitter Bot API initialized")
	print("[Sending the tweet] \"{0}\" will be posted".format(message))
	status = api.PostUpdate(message)
	print("[Status message posted] \"{0}\"".format(status.text))


if __name__ == "__main__":
	print("[Loading the keys] Connecting to the bot to Twitter...")
	with open('twitterKeys.json') as userKeys:
		keys = json.load(userKeys)
		print("[Loading the keys] Authentification keys loading...")

	message = "Bonjour!\nÀ une semaine de Noël, il est temps de se dépêcher!"
	tweet(keys,message)
