defmodule EntradaEnteros do
  @moduledoc "Módulo para calcular la devuelta de una compra."

  @doc "Función principal que solicita valores y calcula la devuelta."
  def main do
    valor_total = "Ingrese valor total de la factura: "
    |> Util.ingresar(:entero)

    valor_entregado = "Ingrese valor entregado para el pago: "
    |> Util.ingresar(:entero)

    calcular_devuelta(valor_entregado, valor_total)
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  @doc "Calcula el dinero a devolver restando el valor total del valor entregado."
  def calcular_devuelta(valor_total, valor_entregado) do
    valor_total - valor_entregado
  end

  @doc "Genera un mensaje con el monto de la devuelta."
  def generar_mensaje(devuelta) do
    "La devuelta es: #{devuelta}"
  end
end

EntradaEnteros.main()
