from django.db import models
from django.contrib.auth import get_user_model
User = get_user_model()

class Command(models.Model):
    name = models.CharField(max_length=20)

    date_created = models.DateTimeField(auto_now_add=True)
    date_updated = models.DateTimeField(auto_now_add=True)
    created_by = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.name
