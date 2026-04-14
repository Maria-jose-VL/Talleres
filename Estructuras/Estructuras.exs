defmodule Estructuras do
  def main do
    "Ingrese los datos del cliente:"
    |> Util.mostrar_mensaje()

    Cliente.ingresar()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  def generar_mensaje(cliente) do
    "Hola #{cliente.nombre}, tienes #{cliente.edad} años y mides #{cliente.altura} metros\n"
  end
end

Estructuras.main()
