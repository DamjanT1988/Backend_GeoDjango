from django.db import models

#### SÖTVATTEN - LIMNISKA EKOSYSTEM ####
### SÖTVATTEN NATURLIGA ###
class Ecosystem_category_sotv_nat(models.Model):
    section_code = models.CharField(max_length=100, unique=True)
    category = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.code} - {self.category}"


## EKOSYSTEM ##
class Sjo(models.Model):
    category = models.ForeignKey(Ecosystem_category_sotv_nat, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()

class Naturliga_smavatten(models.Model):
    category = models.ForeignKey(Ecosystem_category_sotv_nat, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()

class Vattendrag(models.Model):
    category = models.ForeignKey(Ecosystem_category_sotv_nat, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()


### SÖTVATTEN ANTROPOGEN ###
class Ecosystem_category_sotv_ant(models.Model):
    section_code = models.CharField(max_length=100, unique=True)
    category = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.code} - {self.category}"


## EKOSYSTEM ##
class Values_sotv_ant(models.Model):
    category = models.ForeignKey(Ecosystem_category_sotv_ant, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()
