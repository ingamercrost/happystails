from django.urls import path, include
from .views import *
from rest_framework import routers

#Creamos las rutas para la api
router = routers.DefaultRouter()
router.register('productos', ProductoViewset)
router.register('tipoproductos', TipoProductoViewset)
router.register('pedido', PedidoViewset)
router.register('lineapedido', LineaPedidoViewset)


urlpatterns = [
        path('api/', include(router.urls)),

    	path('', index, name="index"),
        path('indexapi/', indexapi, name="indexapi"),
        path('about/', about, name="about"),
        path('addtowishlist/', addtowishlist, name="addtowishlist"),
        path('cart/', cart, name="cart"),
        path('checkout/', checkout, name="checkout"),
        path('contact/', contact, name="contact"),
        path('men/', indexapi, name="men"),
        path('ordercomplete/', ordercomplete, name="ordercomplete"),
        path('productdetail/<id>/', productdetail, name="productdetail"),
        path('perfil/', perfil, name="perfil"),
        path('historial/', historial, name="historial"),
        path('solicitudes/', solicitudes, name="solicitudes"),
        path('solicitudesadm/', solicitudesadm, name="solicitudesadm"),
        path('suscripcion/', suscripcion, name="suscripcion"),
        path('card/', card, name="card"),
        path('status/', status, name="status"),
        path('detallepedido/<id>/', detallepedido, name="detallepedido"),
        path('statusadmin/', statusadmin, name="statusadmin"),
        path('updatepedido/<id>/', updatepedido, name="updatepedido"),

        
        
        path('product/', product, name="product"),
        path('update/<id>/', update, name="update"),
        path('delete/<id>/', delete, name="delete"),
        path('eliminar/<id>/', eliminar, name="eliminar"),

        path('updatesoli/<id>/', updatesoli, name="updatesoli"),
        path('detallesoli/<id>/', detallesoli, name="detallesoli"),

        path('suscribir/<id>/', agregar_suscriptor, name="suscribir"),

        path('quitar-usuario/<id>/', quitar_usuario_de_grupo, name='quitar_usuario_de_grupo'),

        #SOLICITUD
        path('solicitud/', solicitud, name="solicitud"),

    ]