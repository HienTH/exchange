from django.conf.urls import url
from . import views
urlpatterns= [
    #register/
    url(r'^xembanggiacoin/$', views.xembanggiacoin, name='xembanggiacoin'),
    url(r'^xembangchitietcoin/$', views.xembangchitietcoin, name='xembangchitietcoin'),
    url(r'^xemdanhsachgiaodich/$', views.xemdanhsachgiaodich, name='xemdanhsachgiaodich'),
]