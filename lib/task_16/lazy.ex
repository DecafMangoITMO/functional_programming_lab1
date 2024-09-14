defmodule Task16.Lazy do
  def solution(pow) do
    Stream.iterate(trunc(:math.pow(2, pow)), &div(&1, 10))
    |> Stream.take(pow)
    |> Stream.map(&rem(&1, 10))
    |> Enum.reduce(0, &(&1 + &2))
  end
end
