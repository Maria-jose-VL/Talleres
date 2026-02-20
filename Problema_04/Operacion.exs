defmodule EntradaReales do
  def main do
    valor_producto = Util.ingresar("Ingrese el valor del producto:", :entero)
    porcentaje_descuento = Util.ingresar("Ingrese el porcentaje de descuento (0.0 a 1.0):", :float)

    valor_descuento = calcular_descuento(valor_producto, porcentaje_descuento)
    valor_final = calcular_valor_final(valor_producto, valor_descuento)

    generar_mensaje(valor_descuento, valor_final)
    |> Util.mostrar_mensaje()
  end

  def calcular_descuento(valor_producto, porcentaje_descuento) do
    valor_producto * porcentaje_descuento
  end

  def calcular_valor_final(valor_producto, valor_descuento) do
    valor_producto - valor_descuento
  end

  def generar_mensaje(valor_descuento, valor_final) do
    valor_descuento = valor_descuento |> Float.round(1)
    valor_final=valor_final |> Float.round(1)

    "Valor del descuento: #{valor_descuento}\nValor final a pagar: #{valor_final}"
  end
end

EntradaReales.main()

#TAREA: usar mapas en elixir, buscar mapas en elixir y haga ejemplos.
