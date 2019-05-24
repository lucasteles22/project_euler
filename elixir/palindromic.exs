require Integer
require String

defmodule Palindromic do
  def is_palindromic(number) do
    to_string(number)
    |> String.graphemes
    |> palindromic
  end

  defp palindromic(number_list) when length(number_list) == 0 do
    true
  end

  defp palindromic(number_list) when length(number_list) == 1 do
    true
  end

  defp palindromic(number_list) when length(number_list) > 1 do
    [head | tail] = number_list
    first_number = head
    reverse_list = Enum.reverse(tail)

    [head | tail] = reverse_list
    cond do
      first_number == head ->
        palindromic(Enum.reverse(tail))
      true ->
        false
    end
  end
end
