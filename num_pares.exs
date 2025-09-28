defmodule SumaPares do
  @moduledoc """
  Suma únicamente los números pares de una lista usando recursividad de cola.
  """

  # Función pública: arranca con acumulador en 0
  def sumar(lista), do: sumar(lista, 0)

  # Caso base: lista vacía
  defp sumar([], acc), do: acc
  # - No hay recursividad aquí, se retorna el acumulador

  # Caso recursivo con número par
  # - Recursividad Directa
  # - Recursividad Lineal
  # - Recursividad de Cola (la llamada recursiva es lo último que ocurre)
  defp sumar([h | t], acc) when rem(h, 2) == 0, do: sumar(t, acc + h)

  # Caso recursivo con número impar
  # - Recursividad Directa
  # - Recursividad Lineal
  # - Recursividad de Cola
  defp sumar([_h | t], acc), do: sumar(t, acc)

  @doc """
  Ejecuta un ejemplo con datos quemados.
  """
  def main do
    lista = [1, 2, 3, 4, 5, 6, 7, 8]
    IO.puts("Lista: #{inspect(lista)}")
    IO.puts("Suma de pares: #{sumar(lista)}")
  end
end

SumaPares.main()
