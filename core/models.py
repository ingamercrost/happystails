from django.db import models
from datetime import datetime
# Create your models here.

class TipoAtencion(models.Model):
    descripcion = models.CharField(max_length=50)

    def __str__(self):
        return self.descripcion

class TipoSolicitud(models.Model):
    descripcion = models.CharField(max_length=50)

    def __str__(self):
        return self.descripcion

class TipoProducto(models.Model):
    descripcion = models.CharField(max_length=50)

    def __str__(self):
        return self.descripcion

class Producto(models.Model):
    nombre = models.CharField(max_length=50)
    descripcion = models.CharField(max_length=200)
    tipo = models.ForeignKey(TipoProducto, on_delete=models.CASCADE)
    precio = models.IntegerField()
    stock = models.IntegerField()
    imagen = models.ImageField()
    

    def __str__(self):
        return self.nombre

class Solicitud(models.Model):
    nombre = models.CharField(max_length=50)
    tiposoli = models.ForeignKey(TipoSolicitud, on_delete=models.CASCADE)
    descripcion = models.CharField(max_length=200)
    tipoatencion = models.ForeignKey(TipoAtencion, on_delete=models.CASCADE)
    fecha = models.DateTimeField(default=datetime.now)
    aceptado = models.BooleanField(default=False)

    def __str__(self):
        return self.nombre






