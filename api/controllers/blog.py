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

class BlogController(BaseController):

	def __init__(self):
		super(BaseController, self)

	# @protected
	def get(self, blog_id, *args, **kwargs):

		sql = "SELECT b.* FROM" + constants.BLOG_POST_TABLE + "b WHERE b.id=%s LIMIT 1"
		params = (blog_id,)
		res = db_query_select(sql,params)

		if len(res) == 0:
			return super(BlogController,self).error_response(Status.MISSING_PARAMETERS)

		sql = """SELECT bt.title, bt.hex, bt.id FROM""" + constants.BLOG_POST_TAG_TABLE
		specs = """AS bpt JOIN """ + constants.BLOG_TAG_TABLE + """AS bt ON bt.id=bpt.tag_id 
			WHERE bpt.post_id=%s

			ORDER BY bt.id ASC"""
		sql = sql + specs
		tags_res = db_query_select(sql,params)

		if len(tags_res) == 0:
			return super(BlogController,self).error_response(Status.MISSING_PARAMETERS)

		return super(BlogController,self).success_response({'post':res[0],'tags':tags_res})