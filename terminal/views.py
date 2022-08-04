from django.views.generic import ListView, DetailView
from .models import Command


class CommandListView(ListView):
    model = Command


class CommandDetailView(DetailView):
    model = Command
