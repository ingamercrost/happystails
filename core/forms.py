
from django import forms
from django.forms import ModelForm
from .models import *


class ProductoForm(ModelForm):
    nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre"}))
    precio = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Precio"}))
    stock = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Stock"}))
        
    class Meta:
        model = Producto
        fields = '__all__'

class SolictudForm(ModelForm):

    descripcion = forms.CharField(widget=forms.Textarea(attrs={"placeholder":"Ingrese la descripcion de su peticion"}))

    class Meta:
        model = Solicitud
        fields = ('tiposoli','descripcion','tipoatencion')
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['tiposoli'].label = 'Tipo de solicitud'
        self.fields['tipoatencion'].label = 'Modo de atencion'

class DireccionForm(forms.Form):
    Nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre"}))
    Apellido = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Apellido"}))
    Ciudad = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Ciudad"}))
    Comuna = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Comuna"}))
    Direccion = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Direccion"}))
    Email = forms.EmailField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Email"}))

class DonacionForm(forms.Form):
    Nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre"}))
    Email = forms.EmailField(widget=forms.TextInput(attrs={"placeholder":"Ingrese Email"}))
    Monto = forms.IntegerField(min_value=0,widget=forms.NumberInput(attrs={"placeholder":"Ingrese Monto a donar (USD)"}))
            