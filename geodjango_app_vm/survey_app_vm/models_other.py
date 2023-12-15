from django.db import models


### ABSTRACT CLASSES ###
class SurveyItemBase(models.Model):
    attributes = models.CharField(max_length=255)
    
    class Meta:
        abstract = True

### BASE CLASSES ###
class Group_naturvardestrad(models.Model):
    group = models.CharField(max_length=255)

    def __str__(self):
        return self.group

class Group_vardeelement(models.Model):
    group = models.CharField(max_length=255)

    def __str__(self):
        return self.group

class Group_natura2000(models.Model):
    group = models.CharField(max_length=255)

    def __str__(self):
        return self.group

class Group_hydromorfologisk(models.Model):
    group = models.CharField(max_length=255)

    def __str__(self):
        return self.group
    
class Group_livsmiljo_grad(models.Model):
    group = models.CharField(max_length=255)

    def __str__(self):
        return self.group

class Group_kvant_artforekomst(models.Model):
    group = models.CharField(max_length=255)

    def __str__(self):
        return self.group

class Group_kartlaggningstyp(models.Model):
    group = models.CharField(max_length=255)

    def __str__(self):
        return self.group

class Group_naturvardesklass(models.Model):
    group = models.CharField(max_length=255)

    def __str__(self):
        return self.group
    




### EXTENSION CLASSES ###

## Group_naturvardestrad ##
class Gamla_grovatrad_haltrad(SurveyItemBase):
    group_id = models.ForeignKey(Group_naturvardestrad, on_delete=models.CASCADE)

class Hogstubbar_lagor(SurveyItemBase):
    group_id = models.ForeignKey(Group_naturvardestrad, on_delete=models.CASCADE)

class Vaxtsatt(SurveyItemBase):
    group_id = models.ForeignKey(Group_naturvardestrad, on_delete=models.CASCADE)

class Ekologisk_funktion(SurveyItemBase):
    group_id = models.ForeignKey(Group_naturvardestrad, on_delete=models.CASCADE)

class Element_strukturer(SurveyItemBase):
    group_id = models.ForeignKey(Group_naturvardestrad, on_delete=models.CASCADE)

class Artforekomst(SurveyItemBase):
    group_id = models.ForeignKey(Group_naturvardestrad, on_delete=models.CASCADE)

class Annat(SurveyItemBase):
    group_id = models.ForeignKey(Group_naturvardestrad, on_delete=models.CASCADE)

## Group_vardeelement ##
class Berg_sten(SurveyItemBase):
    group_id = models.ForeignKey(Group_vardeelement, on_delete=models.CASCADE)

class Blommor(SurveyItemBase):
    group_id = models.ForeignKey(Group_vardeelement, on_delete=models.CASCADE)

class Buskar(SurveyItemBase):
    group_id = models.ForeignKey(Group_vardeelement, on_delete=models.CASCADE)

class Jord(SurveyItemBase):
    group_id = models.ForeignKey(Group_vardeelement, on_delete=models.CASCADE)

class Kulturlandskap(SurveyItemBase):
    group_id = models.ForeignKey(Group_vardeelement, on_delete=models.CASCADE)

class Myr(SurveyItemBase):
    group_id = models.ForeignKey(Group_vardeelement, on_delete=models.CASCADE)

class Strand(SurveyItemBase):
    group_id = models.ForeignKey(Group_vardeelement, on_delete=models.CASCADE)

class Trad(SurveyItemBase):
    group_id = models.ForeignKey(Group_vardeelement, on_delete=models.CASCADE)

class Vatten(SurveyItemBase):
    group_id = models.ForeignKey(Group_vardeelement, on_delete=models.CASCADE)

class Ovrigt(SurveyItemBase):
    group_id = models.ForeignKey(Group_vardeelement, on_delete=models.CASCADE)

## Group_natura2000 ##
class Kust_hav(SurveyItemBase):
    nature_type_code = models.IntegerField()
    group_id = models.ForeignKey(Group_natura2000, on_delete=models.CASCADE)

class Dyner(SurveyItemBase):
    nature_type_code = models.IntegerField()
    group_id = models.ForeignKey(Group_natura2000, on_delete=models.CASCADE)

class Sotvatten(SurveyItemBase):
    nature_type_code = models.IntegerField()
    group_id = models.ForeignKey(Group_natura2000, on_delete=models.CASCADE)

class Grasmark(SurveyItemBase):
    nature_type_code = models.IntegerField()
    group_id = models.ForeignKey(Group_natura2000, on_delete=models.CASCADE)

class Myrer(SurveyItemBase):
    nature_type_code = models.IntegerField()
    group_id = models.ForeignKey(Group_natura2000, on_delete=models.CASCADE)

class Berg_substratmark(SurveyItemBase):
    nature_type_code = models.IntegerField()
    group_id = models.ForeignKey(Group_natura2000, on_delete=models.CASCADE)

class Skog(SurveyItemBase):
    nature_type_code = models.IntegerField()
    group_id = models.ForeignKey(Group_natura2000, on_delete=models.CASCADE)

class Ovrigt_2(SurveyItemBase):
    nature_type_code = models.IntegerField()
    group_id = models.ForeignKey(Group_natura2000, on_delete=models.CASCADE)

class Ovrigt_forstudier(SurveyItemBase):
    nature_type_code = models.IntegerField()
    group_id = models.ForeignKey(Group_natura2000, on_delete=models.CASCADE)

## Group_hydromorfologisk ##
class Values_hydro(SurveyItemBase):
    type_code = models.CharField(max_length=255)
    group_id = models.ForeignKey(Group_hydromorfologisk, on_delete=models.CASCADE)

## Group_livsmiljo_grad ##
class Values_livsmiljo(SurveyItemBase):
    type_code = models.CharField(max_length=255)
    group_id = models.ForeignKey(Group_livsmiljo_grad, on_delete=models.CASCADE)

## Group_kvant_artforekomst ##
class Values_kvant_artforekomst(SurveyItemBase):
    type_code = models.CharField(max_length=255)
    group_id = models.ForeignKey(Group_kvant_artforekomst, on_delete=models.CASCADE)

## Group_kartlaggningstyp ##
class Values_kartlaggningstyp(SurveyItemBase):
    group_id = models.ForeignKey(Group_kartlaggningstyp, on_delete=models.CASCADE)

## Group_naturvardesklass ##
class Values_naturvardesklass(SurveyItemBase):
    color = models.CharField(max_length=255)
    nature_value_class = models.CharField(max_length=255)
    group_id = models.ForeignKey(Group_naturvardesklass, on_delete=models.CASCADE)

