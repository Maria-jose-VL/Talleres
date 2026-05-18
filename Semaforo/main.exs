# Cargar el módulo
Code.require_file("supermercado.ex")

# Iniciar el sistema
{:ok, _pid} = Supermercado.start_link(nil)

IO.puts("\n🛒 Simulación de supermercado con una sola caja\n")

# Llegan clientes
Supermercado.entrar("Ana")
:timer.sleep(1000)

Supermercado.entrar("Luis")
:timer.sleep(1000)

Supermercado.entrar("Pedro")
:timer.sleep(1000)

# Salen clientes
Supermercado.salir("Ana")
:timer.sleep(2000)

Supermercado.salir("Luis")
:timer.sleep(2000)

Supermercado.salir("Pedro")
:timer.sleep(1000)

IO.puts("\n✅ Simulación finalizada\n")
