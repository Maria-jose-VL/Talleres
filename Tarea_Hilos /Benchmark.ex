
defmodule Benchmark do
  def determinar_tiempo_ejecucion({modulo, funcion, argumentos}) do
    {tiempo, _resultado} = :timer.tc(modulo, funcion, argumentos)
    tiempo
  end
end
