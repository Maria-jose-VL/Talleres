defmodule Util do
  @moduledoc "Módulo de utilidades para mostrar mensajes y solicitar entrada del usuario."

  @doc "Imprime un mensaje en la consola."
  def mostrar_mensaje(mensaje) do
    IO.puts(mensaje)
  end

  @doc "Solicita un número entero."
  def ingresar(mensaje, :entero),
    do: ingresar(mensaje, &String.to_integer/1, :entero)

  @doc "Solicita un número real."
  def ingresar(mensaje, :real),
    do: ingresar(mensaje, &String.to_float/1, :real)

  # Función privada general
  defp ingresar(mensaje, parser, tipo_dato) do
    try do
      mensaje
      |> IO.gets()
      |> String.trim()
      |> parser.()
    rescue
      ArgumentError ->
        IO.puts("Error, se espera un número #{tipo_dato}\n")
        ingresar(mensaje, parser, tipo_dato)
    end
  end
end
