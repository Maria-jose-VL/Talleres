defmodule Matriz do

  # S1 = suma de elementos por debajo de la diagonal principal
  def suma_debajo_diagonal(matriz) do
    matriz
    |> Enum.with_index()
    |> Enum.reduce(0, fn {fila, i}, acumulador1 ->
      fila
      |> Enum.with_index()
      |> Enum.reduce(acumulador1, fn {elem, j}, acumulador2 ->
        if i > j do
          acumulador2 + elem
        else
          acumulador2
        end
      end)
    end)
  end

  # S2 = promedio de todos los elementos de la matriz
  def promedio_elementos(matriz) do
    elementos = List.flatten(matriz)
    Enum.sum(elementos) / length(elementos)
  end

  defmodule Operacion do
    def main() do
      matriz = [
        [60, 22, 41,  5],
        [13, 33, 44,  5],
        [89, 10, 100, 94],
        [ 5, 101,  6, 34]
      ]

      # Ejecuta las dos tareas en paralelo (concurrente)
      task1 = Task.async(fn -> Matriz.suma_debajo_diagonal(matriz) end)
      task2 = Task.async(fn -> Matriz.promedio_elementos(matriz) end)

      # Espera resultados de las dos tareas
      s1 = Task.await(task1)
      s2 = Task.await(task2)

      # S3 = operación entre S1 y S2
      c = s1 * s2

      # Imprime resultados
      IO.puts("Suma elementos debajo de la diagonal (S1): #{s1}")
      IO.puts("Promedio de todos los elementos (S2):      #{s2}")
      IO.puts("Resultado S3 = S1 * S2 (C):                #{c}")
    end
  end
end

Matriz.Operacion.main()
