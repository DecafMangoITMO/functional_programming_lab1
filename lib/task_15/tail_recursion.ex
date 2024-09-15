defmodule Task15.TailRecursion do
  @moduledoc "Realization by using tail recursion"

  defp factorial(n), do: factorial(n, 1)

  defp factorial(1, acc), do: acc

  defp factorial(n, acc), do: factorial(n - 1, n * acc)

  @spec solution(pos_integer()) :: integer()
  def solution(grid_size),
    do: trunc(factorial(2 * grid_size) / (factorial(grid_size) * factorial(grid_size)))
end
