#!/usr/bin/env python
#-*- coding:utf-8 -*-

from database import *
from twitterBot import *

import random
import csv
import time
import sys
reload(sys)
sys.setdefaultencoding('utf8')


def papibotPi():
    """Programme principal du bot Twitter PapiBot Revillon"""
    print("Connecting to the database")
    dbInfo = dict()
    with open('connexionBDD.json') as db:
        dbInfo = json.load(db)
        connexion = connect(dbInfo)
    print("Database connected")

    print("Connecting to Twitter")
    with open('twitterKeys.json') as userKeys:
        keys = json.load(userKeys)
    print("Connected to @PapibotRevillon")


    authorCount = getAuthorsCount(connexion)
    quoteCount = getQuotesCount(connexion)

    quoteID = random.randrange(1,quoteCount)
    quote = getQuoteInfosFromID(connexion, quoteID)
    author = getAuthorInfosFromID(connexion, quote["AUTH_ID"])
   

    print("The following message will be tweeted :")
    message = formatAuthor(author) + "\n\"" + quote["QUOTE"] + "\""
    print(message)
    
    tweet(keys,message)
    connexion.close()

    
if __name__ == "__main__":
    	papibotPi()
