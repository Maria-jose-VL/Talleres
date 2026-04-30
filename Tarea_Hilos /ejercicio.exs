defmodule Descargas do
  def main do
    Benchmark.determinar_tiempo_ejecucion({Descargas, :simular_descargas, []})
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  def simular_descargas do
    archivos = [
      {"Archivo 1", 2000},
      {"Archivo 2", 3000},
      {"Archivo 3", 1500}
    ]

    Enum.each(archivos, fn {nombre, tiempo} ->
      spawn(fn -> descargar(nombre, tiempo) end)
    end)

    # Espera a que todos los procesos terminen
    :timer.sleep(4000)
  end

  def descargar(nombre, tiempo) do
    IO.puts("#{nombre} iniciando descarga...")

    :timer.sleep(tiempo)

    IO.puts("#{nombre} descargado correctamente.")
  end

  def generar_mensaje(tiempo) do
    "\nEl tiempo de ejecución fue de #{tiempo} microsegundos."
  end6
end

Descargas.main()
