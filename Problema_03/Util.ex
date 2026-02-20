defmodule Util do
  @moduledoc "Módulo de utilidades para mostrar mensajes y solicitar entrada al usuario."

  @doc "Imprime un mensaje en la consola de salida estándar."
  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end

  @doc "Solicita entrada del usuario y la convierte al tipo especificado."
  def ingresar(mensaje,:entero ) do
    mensaje
    |> IO.gets()
    |> String.trim()
    |> String.to_integer()
  end
end
