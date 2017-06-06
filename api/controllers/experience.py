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
	def get(self, experience_id, *args, **kwargs):

		experience_id = 1
		sql = "SELECT * FROM" + constants.EXPERIENCE_TABLE + "WHERE id=%s"

		params = (experience_id,)

		res = db_query_select(sql,params)

		if len(res) == 0:
			return super(ExperienceController,self).error_response(Status.MISSING_PARAMETERS)

		sql = """SELECT es.skill_id, s.name FROM""" + constants.EXPERIENCE_SKILL_TABLE
		specs = """AS es JOIN """ + constants.SKILL_TABLE + """AS s ON s.id=es.skill_id 
			WHERE es.experience_id=%s

			GROUP BY es.skill_id
			ORDER BY es.skill_id"""
		sql = sql + specs
		skills_res = db_query_select(sql,params)

		if len(skills_res) == 0:
			return super(ExperienceController,self).error_response(Status.MISSING_PARAMETERS)

		return super(ExperienceController,self).success_response({'experience':res[0],'skills':skills_res})