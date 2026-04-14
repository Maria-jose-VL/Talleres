defmodule Util do
  @moduledoc """
  Módulo de utilidades para solicitar datos al usuario
  y convertirlos al tipo correspondiente.
  """

  @doc "Solicita un texto al usuario."
  def ingresar(mensaje, :texto) do
    mensaje
    |> IO.gets()
    |> String.trim()
  end

  def ingresar(mensaje, :entero) do
    mensaje
    |> IO.gets()
    |> String.trim()
    |> String.to_integer()
  end

  def ingresar(mensaje, :booleano) do
    respuesta =
      mensaje
      |> IO.gets()
      |> String.trim()
      |> String.downcase()

    respuesta == "si"
  end
end
