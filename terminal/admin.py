from django.contrib import admin
from .models import Command

@admin.register(Command)
class CommandAdmin(admin.ModelAdmin):
    list_display = ('name',)
    search_fields = ('name',)
