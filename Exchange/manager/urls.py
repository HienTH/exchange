from django.conf.urls import url
from . import views
urlpatterns= [
    url(r'^xemgiachenhlech/$', views.xemgiachenhlech, name='xemgiachenhlech'),
    url(r'^themgiachenhlech/$', views.themgiachenhlech, name='themgiachenhlech'),
    url(r'^suagiachenhlech/$', views.suagiachenhlech, name='suagiachenhlech'),
    url(r'^danhsachdagiaodich/$', views.danhsachdagiaodich, name='danhsachdagiaodich'),
]