from django.db import models

# Create your models here.
class BrandV7(models.Model):

    bno = models.CharField(max_length=50, primary_key=True, unique=True)
    brand_name = models.CharField(max_length=200)
    eng_name = models.CharField(max_length=200)
    created_time = models.DateTimeField(auto_now_add=True)
    eng_name1 = models.CharField(max_length=200, blank=True, null=True)

    class Meta:
        ordering = ('created_time',)
