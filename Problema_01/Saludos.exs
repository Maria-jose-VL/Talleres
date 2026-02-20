defmodule Mensaje do
  @moduledoc "Módulo para mostrar un mensaje de bienvenida a la empresa."

  @doc "Muestra un mensaje de bienvenida."
  def main do
    "Bienvenidos a mi empresa"
    |> Util.mostrar_mensaje()
  end
end

Mensaje.main()
