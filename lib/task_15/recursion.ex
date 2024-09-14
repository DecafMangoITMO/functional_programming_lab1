defmodule Task15.Recursion do
  defp factorial(1), do: 1

  defp factorial(n), do: n * factorial(n - 1)

  @spec solution(pos_integer()) :: integer()
  def solution(grid_size) do
    trunc(factorial(2 * grid_size) / (factorial(grid_size) * factorial(grid_size)))
  end
end
