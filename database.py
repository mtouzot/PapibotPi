#!/usr/bin/env python
# -*- coding:utf-8 -*-

import sys
import json
import mysql.connector
from mysql.connector import errorcode

reload(sys)
sys.setdefaultencoding('utf8')

#General database methods
def connect(info):
    """Connect to the database, db is a dictionnary"""
    try:
	cnx = mysql.connector.connect(host=info["host"],
				      user=info["user"],
                                      password=info["password"],
				      database=info["database"],
				      port=info["port"])
        return cnx
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Invalid username or password")
            return
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
            return
        else:
            print(err)
            return


def quit(cursor, cnx):
    """Close and quit the connection to the database"""
    cursor.close()
    cnx.close()

#AUTHORS TABLE
def getAuthorsCount(cnx):
    """Return the number in the AUTHORS tables"""
    cursor = cnx.cursor()
    query = "SELECT count(*) FROM AUTHORS;"
    cursor.execute(query)
    count = cursor.fetchone()
    cursor.close()
    return count[0]

def getAuthorInfosFromID(cnx,authID=0):
    """Return the author information from the AUTHORS table with its ID"""
    author = dict()
    cursor = cnx.cursor(dictionary=True)
    query = "SELECT * FROM AUTHORS WHERE ID=%s;"
    cursor.execute(query, (authID,))
    for row in cursor:
        author = row
    cursor.close()
    for key in author.keys():
        if author[key] is None:
            author[key] = ''
    return author

def formatAuthor(author):
    authStr = str()
    """Return the string format for an author struct"""
    if author["SURNAME"] != '':
        authStr = "{} ".format(author["SURNAME"])
    authStr = authStr + "{}".format(author["NAME"])
    if author["BIRTH"] != '':
	authStr = authStr + " ( {} - {} )".format(author["BIRTH"], author["DEATH"])
    return authStr

#QUOTES TABLE
def getQuotesCount(cnx):
    """Return the number in the QUOTES tables"""
    cursor = cnx.cursor()
    query = "SELECT count(*) FROM QUOTES;"
    cursor.execute(query)
    count = cursor.fetchone()
    cursor.close()
    return count[0]
    
def getQuoteInfosFromID(cnx,quoteID=0):
    """Return the quote information from the QUOTES tables with its ID"""
    quote = dict()
    cursor = cnx.cursor(dictionary=True)
    query = "SELECT * FROM QUOTES WHERE ID=%s;"
    cursor.execute(query, (quoteID,))
    for row in cursor:
        quote = row
    cursor.close()
    return quote

def getQuoteInfosFromAuthID(cnx,authID=0):
    """Return the quotes from the QUOTES table with an author ID"""
    cursor = cnx.cursor(dictionary=True)
    query = "SELECT * FROM QUOTES WHERE AUTH_ID=%s"
    cursor.execute(query,(authID,))
    quotes = list()
    for quote in cursor:
        quote["QUOTE"].decode('ascii','replace')
        quotes.append(quote)
    cursor.close()
    return quotes

#MAIN
if __name__ == "__main__":
    print("[Loading the database parameters] Connecting to the database...")
    with open('connexionBDD.json') as db:
        dbInfo = json.load(db)
        connexion = connect(dbInfo)
    print(dbInfo)
    print("Connection established")
    authCount = getAuthorsCount(connexion)
    quotCount = getQuotesCount(connexion)
    print("Authors count : {}".format(authCount))
    print("Quotes count : {}".format(quotCount))
    for i in range(1,authCount):
        author = getAuthorInfosFromID(connexion,i)
        quoteAuth = getQuoteInfosFromAuthID(connexion,i)
        for j in range(len(quoteAuth)):
        	print(quoteAuth[j]["QUOTE"])
        print("\n")
    print("\n\n\n")
