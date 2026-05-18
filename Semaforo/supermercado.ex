defmodule Supermercado do
  use GenServer

  # ======================
  # API (lo que se usa desde afuera)
  # ======================

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def entrar(nombre) do
    GenServer.call(__MODULE__, {:entrar, nombre})
  end

  def salir(nombre) do
    GenServer.cast(__MODULE__, {:salir, nombre})
  end

  # ======================
  # ESTADO INICIAL
  # ======================

  def init(:ok) do
    {:ok, %{caja: :libre, cliente_actual: nil, cola: []}}
  end

  # ======================
  # ENTRAR A LA CAJA
  # ======================

  # Caso: caja libre
  def handle_call({:entrar, nombre}, _from, %{caja: :libre} = estado) do
    IO.puts("🟢 #{nombre} pasa a la caja")

    nuevo_estado = %{
      estado
      | caja: :ocupada,
        cliente_actual: nombre
    }

    {:reply, :ok, nuevo_estado}
  end

  # Caso: caja ocupada
  def handle_call({:entrar, nombre}, _from, %{caja: :ocupada, cola: cola} = estado) do
    IO.puts("🔴 #{nombre} espera en la fila")

    nuevo_estado = %{
      estado
      | cola: cola ++ [nombre]
    }

    {:reply, :espera, nuevo_estado}
  end

  # ======================
  # SALIR DE LA CAJA
  # ======================

  # Caso: no hay cola
  def handle_cast({:salir, nombre}, %{cola: []} = estado) do
    IO.puts("✅ #{nombre} terminó de pagar")

    nuevo_estado = %{
      estado
      | caja: :libre,
        cliente_actual: nil
    }

    {:noreply, nuevo_estado}
  end

  # Caso: hay cola
  def handle_cast({:salir, nombre}, %{cola: [siguiente | resto]} = estado) do
    IO.puts("✅ #{nombre} terminó de pagar")
    IO.puts("➡️ #{siguiente} pasa desde la fila a la caja")

    nuevo_estado = %{
      estado
      | cliente_actual: siguiente,
        cola: resto
    }

    {:noreply, nuevo_estado}
  end
end
