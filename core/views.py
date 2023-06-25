from django.shortcuts import render, redirect
from .models import * 
from .forms import *
from django.contrib import messages
from django.core.paginator import Paginator
from carro.carro import Carro
from django.contrib.auth.models import User, Group
from rest_framework import viewsets
from .serializers import *
import requests
from django.contrib.auth.decorators import login_required, user_passes_test
from pedidos.models import *
from django.shortcuts import get_object_or_404
from django.db.models.signals import post_save
from django.dispatch import receiver    




def grupo_requerido(nombre_grupo):
    def decorator (view_func):
        @user_passes_test(lambda user: user.groups.filter(name='nombre_grupo').exists())
        def wrapper(requests, *args, **kwargs):
            return view_func(requests, *args, **kwargs)
        return wrapper
    return decorator

# Create your views here.
class ProductoViewset(viewsets.ModelViewSet):
    #queryset = Producto.objects.filter(tipo=1)
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializers

class TipoProductoViewset(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    serializer_class = TipoProductoSerializers

class PedidoViewset(viewsets.ModelViewSet):
    queryset = Pedido.objects.all()
    serializer_class = PedidoSerializers

class LineaPedidoViewset(viewsets.ModelViewSet):
    queryset = LineaPedido.objects.all()
    serializer_class = LineaPedidoSerializers

def indexapi(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
    resp = requests.get('https://mindicador.cl/api')
  

    productos = respuesta.json()
    monedas = resp.json()
    
    data = {
        'listado': productos,
        'moneda': monedas
    }

    return render(request, 'core/indexapi.html', data)

def index(request):
    carro = Carro(request)
    productosAll = Producto.objects.all()
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productosAll, 4)
        productosAll = paginator.page(page)
    except:
        raise Http404

    data = {
        'listaProducto': productosAll,
        'paginator': paginator
    }

    return render(request, 'core/index.html', data)



def about(request):
    return render(request, 'core/about.html')

def detallepedido(request, id):
    pedido = Pedido.objects.get(id = id)
    lineapedido = LineaPedido.objects.filter(pedido = id)
    data = {
        'pedido' : pedido,
        'lineapedido' : lineapedido
    }

    return render(request, 'core/detallepedido.html', data)


def solicitudesadm(request):
    solicitud = Solicitud.objects.all()
    data = {
        'soli' : solicitud
    }
    return render(request, 'core/solicitudesadm.html',data)


def historial(request):
    pedido = Pedido.objects.all()
    data = {
        'pedido' : pedido
    }
    return render(request, 'core/historial.html',data)

def perfil(request):
    return render(request, 'core/perfil.html')    

def addtowishlist(request):
    return render(request, 'core/add-to-wishlist.html')

def cart(request):
    return render(request, 'core/cart.html')

def card(request):
    return render(request, 'core/card.html')

def statusadmin(request):
    pedido = Pedido.objects.all()
    data = {
        'pedido' : pedido
    }
    return render(request, 'core/statusadmin.html', data)

def solicitudes(request):
    solicitud = Solicitud.objects.all()
    data = {
        'soli' : solicitud
    }
    return render(request, 'core/solicitudes.html', data)

def checkout(request):
    data = {
        'form' : DireccionForm()
    }       

    if request.method == 'POST':
        formulario = DireccionForm(request.POST)
        if formulario.is_valid():
            Nombre = formulario.cleaned_data['Nombre']
            Apellido = formulario.cleaned_data['Apellido']
            Ciudad = formulario.cleaned_data['Ciudad']
            Comuna = formulario.cleaned_data['Comuna']
            Direccion = formulario.cleaned_data['Direccion']
            Email = formulario.cleaned_data['Email']

    
    
    return render(request, 'core/checkout.html', data)

def contact(request):
    return render(request, 'core/contact.html')

def status(request):
    user = User.objects.get(id=request.user.id)
    usuario = user.groups.filter(name='Suscriptor').exists()
    data = {
        'usuario' : usuario
    }
    return render(request, 'core/status.html', data )



def ordercomplete(request):
    return render(request, 'core/order-complete.html')

def productdetail(request, id):
    productosAll = Producto.objects.get(id=id)

    data = {
        'listaProducto': productosAll,
    }

    return render(request, 'core/product-detail.html', data)

def product(request):
    data = {
        'form' : ProductoForm()
    }   

    if request.method == 'POST':
        formulario = ProductoForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Producto almacenado correctamente")


    return render(request, 'core/product.html', data)

@grupo_requerido("Vendedor")
def update(request,id):
    producto = Producto.objects.get(id=id)
    data = {
        'form' : ProductoForm(instance=producto)
    }

    if request.method == 'POST':
        formulario = ProductoForm(data=request.POST, instance=producto, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Producto modificado correctamente")

            data['form'] = formulario

    return render(request, 'core/update.html', data)

def delete(request,id):
    producto = Producto.objects.get(id = id)
    producto.delete()
    messages.success(request, 'El objeto ha sido eliminado exitosamente.')
    return redirect(to = "index")


def updatesoli(request, id):
    soli = Solicitud.objects.get(id=id)
    soli.aceptado = True
    soli.save()
    return redirect('solicitudesadm')





#SOLICITUDES
@login_required
def solicitud(request):
    data = {
        'form' : SolictudForm(),

    }   

    if request.method == 'POST':
        formulario = SolictudForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            solicitud = formulario.save(commit=False)
            solicitud.nombre = request.user.username
            formulario.save()
            messages.success(request, "solicitud enviada correctamente")


    return render(request, 'core/solicitud.html', data)


def detallesoli(request, id):
    soli = Solicitud.objects.get(id=id)

    data = {
        'soli' : soli
    }
    
    return render(request, 'core/detallesoli.html', data)
    
def eliminar(request,id):
    soli = Solicitud.objects.get(id = id)
    soli.delete()
    messages.success(request, 'El objeto ha sido eliminado exitosamente.')
    return redirect('solicitudesadm')

def agregar_suscriptor(request, id):
    usuario = User.objects.get(id=id)
    usuario.groups.add(1)
    usuario.save()
    return redirect('status')


def quitar_usuario_de_grupo(request, id):

    usuario = User.objects.get(id=id)
    grupo = Group.objects.get(id=1)
    usuario.groups.remove(1)
    return redirect('status')  # Redirecciona a la página deseada después de eliminar al usuario del grupo

@login_required
def suscripcion(request):
    
    
    data = {
        'form' : DonacionForm()
    } 

    if request.method == 'POST':
        formulario = DonacionForm(request.POST)
        if formulario.is_valid():
            Nombre = formulario.cleaned_data['Nombre']
            Email = formulario.cleaned_data['Email']
            Monto = formulario.cleaned_data['Monto']
        
            
          

    return render(request, 'core/suscripcion.html', data)

def updatepedido(request, id):
    pedido = Pedido.objects.get(id=id)
    idconv = int(pedido.seguimiento_id)
    idestado = int(idconv + 1)
    tipo_seguimiento = TipoSeguimiento.objects.get(id=idestado)  
    pedido.seguimiento = tipo_seguimiento
    pedido.save()
    return redirect('../../detallepedido/' + id)

