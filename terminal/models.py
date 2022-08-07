from django.db import models
from django.contrib.auth import get_user_model
from django.urls import reverse
User = get_user_model()

class Command(models.Model):
    name = models.CharField(max_length=20)
    description = models.TextField()

    date_created = models.DateTimeField(auto_now_add=True)
    date_updated = models.DateTimeField(auto_now_add=True)
    created_by = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('terminal:command_detail', args=[self.id])
