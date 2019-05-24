defmodule Solution do
  Code.require_file("palindromic.exs")

  def response do
    calculate(999, 999)
  end

  defp calculate(first, second) do
    value = first * second
    is_palindromic = Palindromic.is_palindromic(value)

    cond do
      is_palindromic ->
        value
      first == 100 || second == 100 ->
        0
      first > 101 && second >= 101 ->
        calculate(first - 1, second)
      first == 101 && second > 101 ->
        calculate(first, second - 1)
      first > 101 && second == 100 ->
        calculate(first - 1, second)
      true ->
        0
    end
  end
end

IO.puts Solution.response
