# Este programa recorre una lista de forma recursiva e imprime cada elemento.

defmodule RecorrerLista do

  # Función principal
  def main do
    lista = [10, 20, 30, 40]
    recorrer(lista)
  end

  # Caso base
  defp recorrer([]) do
    :ok
  end

  # Caso recursivo
  defp recorrer([cabeza | cola]) do
    IO.puts("Elemento: #{cabeza}")
    recorrer(cola)
  end

end
RecorrerLista.main()
