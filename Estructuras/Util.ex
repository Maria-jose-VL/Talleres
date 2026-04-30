defmodule Util do

  def mostrar_mensaje(mensaje) do
    IO.puts(mensaje)
    mensaje
  end

  def ingresar(mensaje, tipo) do
    IO.puts(mensaje)

    entrada = IO.gets("> ") |> String.trim()

    convertir(entrada, tipo)
  end

  defp convertir(valor, :string) do
    valor
  end

  defp convertir(valor, :entero) do
    String.to_integer(valor)
  end

  defp convertir(valor, :flotante) do
    String.to_float(valor)
  end

end
