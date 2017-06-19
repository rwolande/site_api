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

class BlogsController(BaseController):

	def __init__(self):
		super(BaseController, self)

	# @protected
	def get(self, *args, **kwargs):

		sql = 'SELECT * FROM' + constants.BLOG_POST_TABLE + "LIMIT 10 ORDER BY time_creation DESC"
		params = ()
		res = db_query_select(sql,params)

		if len(res) == 0:
			return super(BlogsController,self).error_response(Status.MISSING_PARAMETERS)

		sql = 'SELECT * FROM' + constants.BLOG_TAG_TABLE
		params = ()
		tags_res = db_query_select(sql,params)

		if len(tags_res) == 0:
			return super(BlogsController,self).error_response(Status.MISSING_PARAMETERS)

		return super(BlogsController,self).success_response({'posts':res,'tags':tags_res})