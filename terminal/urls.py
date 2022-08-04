from django.urls import path
from .views import CommandListView, CommandDetailView

app_name = 'terminal'

urlpatterns = [
    path('', CommandListView.as_view(), name='index'),
    path('command/', CommandListView.as_view(), name='command_list'),
    path('command/<int:pk>', CommandDetailView.as_view(), name='command_detail'),
]
