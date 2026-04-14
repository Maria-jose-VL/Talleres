defmodule Util do
  @moduledoc "Módulo de utilidades para mostrar mensajes en la consola."

  @doc "Imprime un mensaje en la consola de salida estándar."
  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end
end
