defmodule Task15.Modular do
  defmodule SequenceGenerator do
    @spec generate_sequence(pos_integer()) :: Range.t()
    def generate_sequence(n) when n > 1, do: 1..n
  end

  defmodule SequenceFilter do
    @spec filter_sequence(any()) :: list()
    def filter_sequence(sequence), do: Enum.filter(sequence, &is_integer/1)
  end

  defmodule SequenceMapper do
    @spec map_sequence(any()) :: list()
    def map_sequence(sequence), do: Enum.map(sequence, & &1)
  end

  defmodule SequnceReducer do
    @spec factorial(any()) :: any()
    def factorial(integer_sequence), do: Enum.reduce(integer_sequence, 1, &(&1 * &2))
  end

  @spec solution(pos_integer()) :: integer()
  def solution(grid_size) do
    factorial =
      &(SequenceGenerator.generate_sequence(&1)
        |> SequenceMapper.map_sequence()
        |> SequenceFilter.filter_sequence()
        |> SequnceReducer.factorial())

    trunc(factorial.(2 * grid_size) / (factorial.(grid_size) * factorial.(grid_size)))
  end
end
