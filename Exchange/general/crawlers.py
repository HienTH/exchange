# coding: utf-8
from rest_framework.decorators import api_view
import requests
from django.utils import timezone

class NewCrawlers(object):
	def run(self):
		captcha = {}
		re = requests.post('http://127.0.0.1:8000/general/capnhatbanggiacoin/', data=captcha).json()
		print re