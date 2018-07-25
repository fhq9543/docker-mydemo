from rest_framework import serializers
from brand_v7.models import BrandV7

class  BrandV5Serializer(serializers.ModelSerializer):
    class Meta:
        model = BrandV7
        fields = '__all__'