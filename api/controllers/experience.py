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

class ExperienceController(BaseController):

	def __init__(self):
		super(BaseController, self)

	# @protected
	def get(self, *args, **kwargs):

		experience_id = 1
		# sql = 'SELECT * FROM' + constants.EXPERIENCE_TABLE + "INNER JOINWHERE id=" + experience_id

		params = ()

		res = db_query_select(sql,params)

		if len(res) == 0:
			return super(ExperiencesController,self).error_response(Status.MISSING_PARAMETERS)

		return super(ExperiencesController,self).success_response({'experience':res})