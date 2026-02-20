defmodule Util do
  @moduledoc "Módulo de utilidades para mostrar mensajes usando una ventana Java."

  @doc "Muestra un mensaje en una ventana de diálogo ejecutando un programa Java."
  def mostrar_mensaje(mensaje) do
    System.cmd("java",["-cp", ".", "Mensaje", mensaje])
  end
end
