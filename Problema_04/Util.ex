defmodule Util do
  @moduledoc "Módulo de utilidades para mostrar mensajes y solicitar entrada del usuario."

  @doc "Imprime un mensaje en la consola de salida estándar."
  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end

  @doc "Solicita entrada al usuario y la convierte a número entero."
  def ingresar(mensaje, :entero) do
    mensaje
    |> IO.gets()
    |> String.trim()
    |> String.to_integer()
  end

  @doc "Solicita entrada al usuario y la convierte a número decimal."
  def ingresar(mensaje, :float) do
    mensaje
    |> IO.gets()
    |> String.trim()
    |> String.to_float()
  end

end
