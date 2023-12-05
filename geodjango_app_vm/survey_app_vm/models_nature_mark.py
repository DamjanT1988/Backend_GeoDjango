from django.db import models

#### MARK - TERRESTRA EKOSYSTEM ####
### MARK NATURLIGA ###
class Ecosystem_category_mark_nat(models.Model):
    section_code = models.CharField(max_length=100, unique=True)
    category = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.code} - {self.category}"


## EKOSYSTEM ##
class Kalfjall(models.Model):
    category = models.ForeignKey(Ecosystem_category_mark_nat, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()

class Berg_och_sten(models.Model):
    category = models.ForeignKey(Ecosystem_category_mark_nat, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()

class Naturligt_bar_jord(models.Model):
    category = models.ForeignKey(Ecosystem_category_mark_nat, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()

class Naturlig_grasmark(models.Model):
    category = models.ForeignKey(Ecosystem_category_mark_nat, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()

class Skog_buskmark(models.Model):
    category = models.ForeignKey(Ecosystem_category_mark_nat, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()

class Myr_mark(models.Model):
    category = models.ForeignKey(Ecosystem_category_mark_nat, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()



### MARK ANTROPOGEN ###
class Ecosystem_category_mark_ant(models.Model):
    section_code = models.CharField(max_length=100, unique=True)
    category = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.code} - {self.category}"


## EKOSYSTEM ##
class Values_mark_ant(models.Model):
    category = models.ForeignKey(Ecosystem_category_mark_ant, on_delete=models.CASCADE)
    specific_code = models.CharField(max_length=100, unique=True)
    biotopemark = models.CharField(max_length=255)
    description = models.TextField()