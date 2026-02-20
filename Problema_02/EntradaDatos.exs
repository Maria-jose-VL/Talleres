defmodule EntradaDatos do
  @moduledoc "Módulo para solicitar el nombre de un empleado y mostrar un mensaje de bienvenida."

  @doc "Función principal que solicita el nombre y muestra un mensaje personalizado."
  def main do
    "Ingrese nombre del empleado: "
    |> ingresar_texto()
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  @doc "Solicita un texto al usuario y lo limpia de espacios en blanco."
  defp ingresar_texto(mensaje) do
    mensaje
    |> IO.gets()
    |> String.trim()
  end

  @doc "Genera un mensaje de bienvenida con el nombre del empleado."
  defp generar_mensaje(nombre) do
    "Bienvenido #{nombre} a la empresa Once Ltda"
    end
end

EntradaDatos.main()
