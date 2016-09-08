#!/usr/bin/env python
# -*- coding: UTF-8 -*-

# import modules to use CGI with python
import cgi
import MySQLdb
import os 
import sys

# create form object
form = cgi.FieldStorage()

test_output = form.getvalue('form_output')

print test_output
print test_output[::-1]

sys.exit(1)



# initialize MySQL connection here
db = MySQLdb.connect(host='localhost', user = 'root', passwd = 'root', db = 'hopshop')
cur = db.cursor()

try:
# need to add code here to scan database so that duplicates aren't added

        select_string = "SELECT count(brew_id) FROM beers WHERE beer_name = '%s'" % beer_name
        cur.execute(select_string)
        data = cur.fetchone()

        # only insert new row if it is not a duplicate
        if int(data[0]) == 0:

        brewery_string = "SELECT brew_id FROM breweries WHERE brewery_name = %s" % brewery_name
        cur.execute(brewery_string)
        data = cur.fetchone()
        brew_id = int(data[0])

        insert_string = "INSERT INTO beers (BEER_NAME, STYLE, ABV, IBU, BREW_ID) VALUES ('%s', '%s', %f, %d, %d)" % (beer_name, style, abv, ibu, brew_id)
        cur.execute(insert_string)

except MySQLdb.Error, e:
        print "Error %d: %s" % (e.args[0],e.args[1])


# begin try/except block to commit changes to database
try:
        db.commit()

except MySQLdb.Error, e:
        print "Error %d: %s" % (e.args[0],e.args[1])
        db.rollback()
        sys.exit(1)

