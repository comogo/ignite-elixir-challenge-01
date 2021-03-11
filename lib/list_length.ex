defmodule ListLength do
  @moduledoc """
  Handle list and they sizes.
  """

  @doc """
  Calculates the length of a list recursively.

  ## Examples

      iex> ListLength.call([1, 2, 3, 4, 5])
      5

  """
  @spec call(list) :: integer
  def call(list), do: size(list, 0)

  defp size([], size), do: size

  defp size([_head | tail], size) do
    size(tail, size + 1)
  end
end
