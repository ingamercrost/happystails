from django.db import models
from django.contrib.auth.models import User
from core.models import Producto
from django.db.models import F, Sum, FloatField
from datetime import datetime
# Create your models here.

class TipoSeguimiento(models.Model):
    seguimiento = models.CharField(max_length=50)
    
    def __str__(self):
        return self.seguimiento

class Pedido(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    create_at=models.DateTimeField(default=datetime.now)
    seguimiento = models.ForeignKey(TipoSeguimiento, on_delete=models.CASCADE, default=1)
    


    def __str__(self):
        return self.id

    @property
    def total(self):
        return self.lineapedido_set.aggregate(

            total=Sum(F("precio")*F("cantidad"), output_field=FloatField())
    
        )["total"]

    class Meta:
        db_table = 'pedidos'
        verbose_name='pedido'
        verbose_name_plural='perdidos'
        ordering = ['id']

class LineaPedido(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    pedido = models.ForeignKey(Pedido, on_delete=models.CASCADE)
    cantidad = models.IntegerField(default=1)
    create_at=models.DateTimeField(default=datetime.now)


    def __str__(self):
        return f'{self.cantidad} Unidades de {self.producto.nombre}'
    
    class Meta:
        db_table = 'Lineapedidos'
        verbose_name='Linea pedido'
        verbose_name_plural='Linea perdidos'
        ordering = ['id']
