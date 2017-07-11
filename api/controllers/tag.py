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

class TagController(BaseController):

	def __init__(self):
		super(BaseController, self)

	# @protected
	def get(self, tag_id, *args, **kwargs):

		sql = "SELECT b.* FROM" + constants.BLOG_POST_TABLE + "b INNER JOIN" + constants.BLOG_POST_TAG_TABLE + "bpt ON b.id=bpt.post_id WHERE bpt.tag_id=%s"
		params = (tag_id,)
		res = db_query_select(sql,params)

		if len(res) == 0:
			return super(TagController,self).success_response({'posts':[]})

		return super(TagController,self).success_response({'posts':res})