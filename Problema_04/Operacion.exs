defmodule EntradaReales do
  @moduledoc "Módulo para calcular descuentos en productos."

  @doc "Función principal que solicita datos, calcula el descuento y muestra el resultado."
  def main do
    valor_producto = "Ingrese el valor del producto:"
      |> IO.gets()
      |> String.trim()
      |> String.to_integer()

    porcentaje_descuento = "Ingrese el porcentaje de descuento (0.0 a 1.0):"
      |> IO.gets()
      |> String.trim()
      |> String.to_float()

    valor_descuento = calcular_descuento(valor_producto, porcentaje_descuento)
    valor_final = calcular_valor_final(valor_producto, valor_descuento)

    generar_mensaje(valor_descuento, valor_final)
    |> Util.mostrar_mensaje()
  end

  @doc "Calcula el monto del descuento multiplicando el valor por el porcentaje."
  def calcular_descuento(valor_producto, porcentaje_descuento) do
    valor_producto * porcentaje_descuento
  end

  @doc "Calcula el valor final restando el descuento del precio original."
  def calcular_valor_final(valor_producto, valor_descuento) do
    valor_producto - valor_descuento
  end

  @doc "Genera un mensaje formateado con el descuento y el valor final."
  def generar_mensaje(valor_descuento, valor_final) do
    valor_descuento = valor_descuento |> Float.round(1)
    valor_final=valor_final |> Float.round(1)

    "Valor del descuento: #{valor_descuento}\nValor final a pagar: #{valor_final}"
  end
end

EntradaReales.main()
