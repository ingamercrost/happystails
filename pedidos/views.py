from django.shortcuts import render, redirect
from .models import *
from carro.carro import Carro
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.template.loader import render_to_string
from django.utils.html import strip_tags
from django.core.mail import send_mail
import os 
from email.message import EmailMessage
import ssl 
import smtplib

# Create your views here.

@login_required
def procesar_pedido(request):
    pedido = Pedido.objects.create(user=request.user)
    carro = Carro(request)
    lineas_pedido = list() 
    for key, value in carro.carro.items():
        lineas_pedido.append(LineaPedido( 

            producto_id = key,
            cantidad = value["cantidad"],
            user = request.user,
            pedido = pedido

        ))
    
    LineaPedido.objects.bulk_create(lineas_pedido)

    enviar_mail(
        pedido=pedido,
        lineas_pedido=lineas_pedido,
        nombreusuario=request.user.username,
        emailusuario=request.user.email
    )
    carro=Carro(request)
    carro.limpiar_carro()
    return redirect('ordercomplete')


def enviar_mail(**kwargs):

    email_sender = "alanmoreno332@gmail.com"
    password = "cqcqnhgjuxgtwhbg"
    email_reciver = kwargs.get("emailusuario")

    subject = "¡Gracias por tu pedido!"
    mensaje = render_to_string("emails/pedido.html",{
        "pedido" : kwargs.get("pedido"),
        "lineas_pedido" : kwargs.get("lineas_pedido"),
        "nombreusuario" : kwargs.get("nombreusuario")
    })

    text = strip_tags(mensaje)

    em = EmailMessage()
    em["From"] = email_sender
    em["To"] = email_reciver
    em["Subject"] = subject
    em.set_content(text)

    context = ssl.create_default_context()

    with smtplib.SMTP_SSL("smtp.gmail.com", 465, context = context) as smtp:
        smtp.login(email_sender, password)
        smtp.sendmail(email_sender, email_reciver, em.as_string())
 