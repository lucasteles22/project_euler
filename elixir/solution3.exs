defmodule Solution do
  Code.require_file("prime_number.exs")

  defp decompose(number, factor) when div(number, factor) == 1 and rem(number, factor) == 0 do
    factor
  end

  defp decompose(number, factor) do
    cond do
      rem(number, factor) == 0 ->
        decompose(div(number, factor), factor)
      true ->
        decompose(number, PrimeNumber.next_prime(factor))
    end
  end

  def response(number) do
    decompose(number, 2)
  end
end

IO.puts Solution.response(600851475143)
