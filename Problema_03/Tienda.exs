defmodule EntradaEnteros do
  def main do
    valor_total = "Ingrese valor total de la factura: "
    |> Util.ingresar(:entero)

    valor_entregado = "Ingrese valor entregado para el pago: "
    |> Util.ingresar(:entero)

    calcular_devuelta(valor_entregado, valor_total)
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  def calcular_devuelta(valor_total, valor_entregado) do
    valor_total - valor_entregado
  end

  def generar_mensaje(devuelta) do
    "La devuelta es: #{devuelta}"
  end
end

EntradaEnteros.main()
