# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from django.http import JsonResponse
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
import random
from login import views

# Create your views here.
@api_view(['GET'])
@views.token_required_admin
def xemgiachenhlech(request, current_admin):
	if request.META['REQUEST_METHOD'] == 'GET':
		giachenhlech = ChenhLech.objects.all()
		serializer = ChenhLechSerializer(giachenhlech, many=True)
		return JsonResponse({'data': serializer.data, 'status': 'success'})

@api_view(['POST'])
@views.token_required_admin
def themgiachenhlech(request, current_admin):
	if request.method == 'POST':
		data=json.loads(json.dumps(request.data))

		if 'fromtypecoin' not in data or 'totypecoin' not in data or 'value' not in data:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

		if data['fromtypecoin']	== data['totypecoin']:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

		serializer = ChenhLechSerializer(data=data)
		if serializer.is_valid():
			try:
				serializer.save()
			except:
				return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})
					
			return JsonResponse({'data': 'OK', 'status': 'success'})
		else:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

@api_view(['PUT'])
@views.token_required_admin
def suagiachenhlech(request, current_user):
	if request.method == 'PUT':
		data=json.loads(json.dumps(request.data))
		
		if 'id' not in data or 'value' not in data:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

		lech = ChenhLech.objects.filter(id=data['id'])
		data['fromtypecoin'] = lech[0].fromtypecoin.id
		data['totypecoin'] = lech[0].totypecoin.id

		if data['value'] >= 0.1:
			data['value'] = data['value']/100

		serializer = ChenhLechSerializer(data=data)
		if serializer.is_valid():
			try:
				serializer.save()
			except:
				return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})
					
			return JsonResponse({'status': 'success'})
		else:
			return JsonResponse({'message': 'Du lieu khong hop le', 'status': 'error'})

@api_view(['GET'])
@views.token_required_admin
def danhsachdagiaodich(request, current_admin):
	if request.META['REQUEST_METHOD'] == 'GET':
		danhsach = Exchange.objects.filter(status=True).order_by('-time')
		serializer = ExchangeSerializer(danhsach, many=True)
		return JsonResponse({'data': serializer.data, 'status': 'success'})

