defmodule Task16.Recursion do
  defp calculate(0), do: 0

  defp calculate(num), do: rem(num, 10) + calculate(div(num, 10))

  @spec solution(non_neg_integer()) :: non_neg_integer()
  def solution(pow) when pow > 0, do: calculate(trunc(:math.pow(2, pow)))
end
