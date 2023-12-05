from django.db import models

#### HAV - MARINA EKOSYSTEM ####
### HAV NATURLIGA ###
class Ecosystem_category_hav_nat(models.Model):
    section_code = models.CharField(max_length=100, unique=True)
    category = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.code} - {self.category}"


## EKOSYSTEM ##
class Marint_ostersjon(models.Model):
    category = models.ForeignKey(Ecosystem_category_hav_nat, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()

class Marint_atlantiskt(models.Model):
    category = models.ForeignKey(Ecosystem_category_hav_nat, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()


### HAV ANTROPOGEN ###
class Ecosystem_category_hav_ant(models.Model):
    section_code = models.CharField(max_length=100, unique=True)
    category = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.code} - {self.category}"


## EKOSYSTEM ##
class Values_hav_ant(models.Model):
    category = models.ForeignKey(Ecosystem_category_hav_ant, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()

## BIOTOP ÖVRIGT ##
class Biotop_other(models.Model):
    section_code = models.CharField(max_length=100, unique=True)
    category = models.CharField(max_length=255)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()