defmodule Task16.Modular do
  alias Task15.Modular.SequenceGenerator

  defmodule SequenceGenerator do
    @spec generate_sequence(integer()) :: list()
    def generate_sequence(num), do: generate_sequence(num, [])

    defp generate_sequence(0, acc), do: acc

    defp generate_sequence(num, acc), do: generate_sequence(div(num, 10), [rem(num, 10) | acc])
  end

  defmodule SequenceFilter do
    @spec filter_sequence(list()) :: list()
    def filter_sequence(sequence), do: Enum.filter(sequence, &is_integer/1)
  end

  defmodule SequenceMapper do
    def map_sequence(sequence), do: Enum.map(sequence, & &1)
  end

  defmodule SequenceReducer do
    def reduce_sequence(integer_sequence), do: Enum.reduce(integer_sequence, 0, &(&1 + &2))
  end

  def solution(pow) do
    SequenceGenerator.generate_sequence(trunc(:math.pow(2, pow)))
    |> SequenceFilter.filter_sequence()
    |> SequenceMapper.map_sequence()
    |> SequenceReducer.reduce_sequence()
  end
end
