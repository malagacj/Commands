from django.views.generic import TemplateView, ListView, DetailView
from .models import Command


class IndexView(TemplateView):
    template_name = 'terminal/index.html'


class CommandListView(ListView):
    model = Command


class CommandDetailView(DetailView):
    model = Command
