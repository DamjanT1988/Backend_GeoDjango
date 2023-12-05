from .models_other import *  # Import all models from models_other.py

class Group_naturvardesklass(models.Model):
    group = models.CharField(max_length=255)

    def __str__(self):
        return self.group


## Group_naturvardesklass ##
class Values_kartlaggningstyp(SurveyItemBase):
    color = models.CharField(max_length=255)
    group_id = models.ForeignKey(Group_naturvardesklass, on_delete=models.CASCADE)