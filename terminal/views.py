from django.views.generic import ListView
from .models import Command


class CommandListView(ListView):
    model = Command
