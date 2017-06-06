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

class SkillController(BaseController):

	def __init__(self):
		super(BaseController, self)

	# @protected
	def get(self, skill_id, *args, **kwargs):

		sql = "SELECT s.* FROM" + constants.SKILL_TABLE + "s WHERE s.id=%s LIMIT 1"
		params = (skill_id,)
		res = db_query_select(sql,params)

		if len(res) == 0:
			return super(SkillController,self).error_response(Status.MISSING_PARAMETERS)

		sql = """SELECT es.experience_id, e.website, e.image_source FROM""" + constants.EXPERIENCE_SKILL_TABLE
		specs = """AS es JOIN """ + constants.EXPERIENCE_TABLE + """AS e ON e.id=es.experience_id 
			WHERE es.skill_id=%s

			GROUP BY es.experience_id
			ORDER BY es.experience_id"""
		sql = sql + specs
		exp_res = db_query_select(sql,params)

		if len(exp_res) == 0:
			return super(SkillsController,self).error_response(Status.MISSING_PARAMETERS)

		return super(SkillController,self).success_response({'skill':res[0],'experiences':exp_res})