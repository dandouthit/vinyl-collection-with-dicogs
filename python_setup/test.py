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
