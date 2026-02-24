defmodule ValidacionAcceso do

  def main do

    nombre = "Ingrese su nombre: "
    |> Util.ingresar(:texto)

    edad = "Ingrese su edad: "
    |> Util.ingresar(:entero)

    credencial = "¿Tiene credencial?: "
    |> Util.ingresar(:booleano)

    validar_acceso(credencial)
  end

  def validar_acceso(edad, credencial) do
    
    #se valida la edad primero y luego la credencial
    #si la edad no es permitida no se valida la credencial

    if edad >= 18 do
      IO.puts("Edad permitida. Acceso permitido.")
    else
      IO.puts("Edad no permitida. Acceso denegado.")
    end

    credencial = IO.gets("¿Tiene credencial? (sí/no): ")
    |> String.trim()
    |> String.downcase()

    if credencial == "si" do
      IO.puts("Acceso permitido.")
    else
      IO.puts("Acceso denegado.")
    end
  end

end
