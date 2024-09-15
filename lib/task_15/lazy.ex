defmodule Task15.Lazy do
  @moduledoc "Realization by using lasy components"

  @spec factorial(integer()) :: integer()
  defp factorial(n),
    do:
      Stream.iterate(1, &(&1 + 1))
      |> Stream.take(n)
      |> Enum.reduce(1, &(&1 * &2))

  @spec solution(integer()) :: integer()
  def solution(grid_size) do
    IO.puts factorial(2 * grid_size)
    trunc(factorial(2 * grid_size) / (factorial(grid_size) * factorial(grid_size)))
  end
end
