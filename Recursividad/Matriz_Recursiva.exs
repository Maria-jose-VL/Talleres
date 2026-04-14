defmodule RecorrerMatriz do

  # Función principal
  def main do
    matriz = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]

    recorrer_matriz(matriz)
  end

  # Caso base matriz
  defp recorrer_matriz([]) do
    :ok
  end

  # Caso recursivo matriz
  defp recorrer_matriz([fila | resto_filas]) do
    recorrer_fila(fila)
    IO.puts("----")  # separación visual
    recorrer_matriz(resto_filas)
  end

  # Caso base fila
  defp recorrer_fila([]) do
    :ok
  end

  # Caso recursivo fila
  defp recorrer_fila([cabeza | cola]) do
    IO.puts("Elemento: #{cabeza}")
    recorrer_fila(cola)
  end

end

RecorrerMatriz.main()
