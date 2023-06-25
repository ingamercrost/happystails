from django.contrib import admin
from .models import *

# Register your models here.

class ProductoAdmin(admin.ModelAdmin):
    list_display = ['nombre','precio','stock','tipo','imagen']
    search_fields = ['nombre']
    list_per_page = 5
    list_filter = ['tipo']
    list_editable = ['precio','stock','tipo','imagen']

class SolicitudAdmin(admin.ModelAdmin):
    list_display = ['tiposoli','descripcion','tipoatencion']
    search_fields = ['tiposoli']
    list_per_page = 5
    list_filter = ['tiposoli']

admin.site.register(TipoProducto)
admin.site.register(Producto,ProductoAdmin)
admin.site.register(TipoAtencion)
admin.site.register(TipoSolicitud)
admin.site.register(Solicitud,SolicitudAdmin)
