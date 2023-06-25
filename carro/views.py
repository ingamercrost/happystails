from django.shortcuts import render, redirect

from .carro import Carro

from core.models import Producto


# Create your views here.

def agregar_producto(request, producto_id):
    carro=Carro(request)
    producto=Producto.objects.get(id=producto_id)
    carro.agregar(producto=producto)
    if producto.stock > 0:
        producto.stock = str(int(producto.stock) - 1)
        producto.save()
    return redirect("cart")


def eliminar_producto(request, producto_id):
    carro=Carro(request)
    producto=Producto.objects.get(id=producto_id)
    carro.eliminar(producto=producto)

    return redirect("cart")

def restar_producto(request, producto_id):
    carro=Carro(request)
    producto=Producto.objects.get(id=producto_id)
    carro.restar_producto(producto=producto)

    producto.stock = str(int(producto.stock) + 1)
    producto.save()

    return redirect("cart")
