defmodule Util do
  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end

  def ingresar(mensaje,:entero ) do
    mensaje
    |> IO.gets()
    |> String.trim()
    |> String.to_integer()
  end
end
