import datetime

from flask import Flask, current_app
from flask import request
from flask import jsonify
from flask_restful import Resource, Api, reqparse, HTTPException
from flask_mysqldb import MySQL
from flask import g
import hashlib
import uuid

#import db_query_select, db_query_update
from api.controllers.base import BaseController
from api import constants
from api.status_codes import Status
from api.controllers import db_query_select, db_query_insert

class ContactController(BaseController):

	def __init__(self):
		super(BaseController, self)

	# @protected
	def post(self, *args, **kwargs):

		sql = "INSERT INTO" + constants.CONTACT_TABLE + "(content,return_address) VALUES (%s,%s)"
		params = (kwargs.content,kwargs.email)
		res = db_query_insert(sql,params)

		if len(res) == 0:
			return super(ContactController,self).error_response(Status.MISSING_PARAMETERS)

		return super(ContactController,self).success_response({'message':res[0]})