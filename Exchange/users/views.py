# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.parsers import MultiPartParser, FormParser
from rest_framework.decorators import parser_classes
from django.core.files.storage import default_storage
from django.http import JsonResponse
from django.views.decorators.http import require_POST
from werkzeug.security import generate_password_hash, check_password_hash
from django.contrib.auth import authenticate
from django.conf import settings
from django.utils import timezone
import uuid, datetime
import requests
from functools import wraps
import rest_framework_jwt
from general.models import User, Coin, UserCoin, Exchange, MatchExchange, ChenhLech, TypeCoin
from general.serializers import UserSerializer, CoinSerializer, UserCoinSerializer, ExchangeSerializer, MatchExchangeSerializer, ChenhLechSerializer, TypeCoinSerializer
import json
import re
import os
import random
from login import views

@api_view(['POST'])
def register(request):
	if request.method == 'POST':
		data=json.loads(json.dumps(request.data))
		if 'password' not in data or 'name' not in data or 'username' not in data:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

		#sinh id cua user
		list_id = User.objects.all().values_list('id', flat=True)
		data['id'] = str(uuid.uuid4().get_hex().upper()[0:10])
		while data['id'] in list_id:
			data['id'] = str(uuid.uuid4().get_hex().upper()[0:10])
		
		hashed_password = generate_password_hash(data['password'], method='sha256')
		data['password']=hashed_password
		data['rank'] = 0

		serializer = UserSerializer(data=data)
		if serializer.is_valid():
			serializer.save()

			return JsonResponse({'data': 'OK', 'status': 'success'})
		else:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

@api_view(['GET'])
@views.token_required_user
def profile(request, current_user):
	if request.META['REQUEST_METHOD'] == 'GET':
		current_user.password = ''
		serializer = UserSerializer(current_user)
		return JsonResponse({'data': serializer.data, 'status': 'success'})

@api_view(['GET'])
@views.token_required_user
def coininfo(request, current_user):
	if request.META['REQUEST_METHOD'] == 'GET':

		coininfo = UserCoin.objects.filter(userid=current_user.id)
		serializer = UserCoinSerializer(coininfo, many=True)
		return JsonResponse({'data': serializer.data, 'status': 'success'})

@api_view(['POST'])
@views.token_required_user
def datlenh(request, current_user):
	if request.method == 'POST':
		data=json.loads(json.dumps(request.data))
		if 'fromtypecoin' not in data or 'fromcoin' not in data or 'totypecoin' not in data or 'tocoin' not in data:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

		if data['fromtypecoin']	== data['totypecoin']:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

		data['time'] = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
		data['userid'] = current_user.id

		serializer = ExchangeSerializer(data=data)
		if serializer.is_valid():
			serializer.save()

			return JsonResponse({'data': 'OK', 'status': 'success'})
		else:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

@api_view(['PUT'])
@views.token_required_user
def sualenh(request, current_user):
	if request.method == 'PUT':
		data=json.loads(json.dumps(request.data))

		if data['fromtypecoin']	== data['totypecoin']:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})
		
		lenh = Exchange.objects.get(id=data['id'])
		if lenh.userid.id != current_user.id:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

		data['status']	= False
		data['time'] = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
		data['userid'] = current_user.id

		serializer = ExchangeSerializer(data=data)
		if serializer.is_valid():
			serializer.save()
			return JsonResponse({'data': 'OK', 'status': 'success'})
		else:
			#return JsonResponse({'data': serializer.errors})
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

@api_view(['GET'])
@views.token_required_user
def xemlenhdadat(request, current_user):
	if request.META['REQUEST_METHOD'] == 'GET':

		lenhdadat = Exchange.objects.filter(userid=current_user.id)
		serializer = ExchangeSerializer(lenhdadat, many=True)
		return JsonResponse({'data': serializer.data, 'status': 'success'})

@api_view(['GET'])
@views.token_required_user
def xemlenhdangcho(request, current_user):
	if request.META['REQUEST_METHOD'] == 'GET':

		lenhdangcho = Exchange.objects.filter(userid=current_user.id, status=False)
		serializer = ExchangeSerializer(lenhdangcho, many=True)
		return JsonResponse({'data': serializer.data, 'status': 'success'})

@api_view(['GET'])
@views.token_required_user
def xemlenhdakhop(request, current_user):
	if request.META['REQUEST_METHOD'] == 'GET':

		lenhdakhop = Exchange.objects.filter(userid=current_user.id, status=True)
		serializer = ExchangeSerializer(lenhdakhop, many=True)
		return JsonResponse({'data': serializer.data, 'status': 'success'})


