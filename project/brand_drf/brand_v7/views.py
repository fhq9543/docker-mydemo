from rest_framework import viewsets

from brand_v7.models import BrandV7
from brand_v7.serializers import BrandV5Serializer
# Create your views here.

from django.shortcuts import render
from django.http import HttpResponse
import json
from django.views import generic
# Create your views here.

def blist(request):
    return render(request, 'brand_v7/list.html')


class BrandViewSet(viewsets.ModelViewSet):
    queryset = BrandV7.objects.all()
    serializer_class = BrandV5Serializer

