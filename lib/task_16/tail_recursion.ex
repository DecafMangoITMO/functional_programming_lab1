defmodule Task16.TailRecursion do
  @moduledoc "Realization by using tail recursion"

  defp calculate(0, acc), do: acc

  defp calculate(num, acc), do: calculate(div(num, 10), acc + rem(num, 10))

  @spec solution(integer()) :: integer()
  def solution(pow), do: calculate(trunc(:math.pow(2, pow)), 0)
end
