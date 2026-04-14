defmodule Cliente do
defstruct nombre: "", edad: 0, altura: 0.0
def crear(nombre, edad, altura) do
%Cliente{nombre: nombre, edad: edad, altura: altura}
end

def ingresar(mensaje, :clientes) do
  mensaje
  |> ingresar([], :clientes)
end

def ingresarCliente do
  mensaje
  |> Util.mostrar_mensaje("Ingrese el nombre del cliente:")
  nombre = Util.ingresar("Ingrese el nombre del cliente:", :string)
  edad = Util.ingresar("Ingrese la edad del cliente:", :entero)
  altura = Util.ingresar("Ingrese la altura del cliente:", :flotante)
  crear(nombre, edad, altura)
end

end
