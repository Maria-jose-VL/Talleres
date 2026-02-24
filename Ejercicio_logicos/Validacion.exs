defmodule ValidacionAcceso do
  def main do
    _nombre = Util.ingresar("Ingrese su nombre: ", :texto)
    edad = Util.ingresar("Ingrese su edad: ", :entero)
    credencial = Util.ingresar("¿Tiene credencial? (si/no): ", :booleano)
    intentos = Util.ingresar("Número de intentos fallidos: ", :entero)

    resultado = validar_acceso(edad, credencial, intentos)

    mostrar_resultado(resultado)
  end

  def validar_acceso(edad, credencial, intentos) do
    unless credencial do
      {:error, "No posee credenciales válidas"}
    else
      cond do
        edad < 18 ->
          {:error, "Usuario menor de edad"}

        intentos > 3 ->
          {:error, "Cuenta bloqueada por intentos fallidos"}

        true ->
          {:ok, "Acceso concedido"}
      end
    end
  end

  def mostrar_resultado({:ok, mensaje}) do
    IO.puts(mensaje)
  end

  def mostrar_resultado({:error, mensaje}) do
    IO.puts(mensaje)
  end
end
