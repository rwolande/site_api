#from functools import wraps
#import datetime
#import logging

from flask import Flask, current_app, request, jsonify, g
from flask_restful import Resource, Api, reqparse, HTTPException
from flask_mysqldb import MySQL

import jwt
import bcrypt

from api.controllers.base import BaseController
from api.controllers.skill import SkillController
from api.controllers.skills import SkillsController
from api.controllers.experience import ExperienceController
from api.controllers.experiences import ExperiencesController
from api.controllers.blog import BlogController
from api.controllers.blogs import BlogsController
from api.controllers.contact import ContactController
#from utilities import get_log_level

app = Flask(__name__, instance_relative_config=True)

app.config.from_pyfile('config.py')

# Loads the configration from /instance/config.py
# NOTE: This file is not checked into git - it must 
# be defined for every installation

app.api = Api(app)
app.mysql = MySQL(app)

# define routes
app.api.add_resource(SkillsController, '/skills')
app.api.add_resource(SkillController, '/skill/<int:skill_id>')
app.api.add_resource(ExperiencesController, '/experiences')
app.api.add_resource(ExperienceController, '/experience/<int:experience_id>')
app.api.add_resource(BlogsController, '/blogs')
app.api.add_resource(BlogController, '/blog/<int:blog_id>')
app.api.add_resource(ContactController, '/contact')

@app.before_request
def before_request():

	# Add anything you want to parse from the POST body
	# to this array and it will be available in flask.g
	post_parameters = ['name',
					   'password',
					   'image_source']
					   
	if not request.method == 'GET':
		for param in post_parameters:
			value = request.json[param] if param in request.json else None
			setattr(g,param,value)

if __name__ == '__main__':
	app.debug = True
 	app.run()

