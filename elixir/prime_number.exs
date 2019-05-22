defmodule PrimeNumber do
  defp check(number, divisor) when divisor > div(number, divisor) do
    true
  end

  defp check(number, divisor) do
    cond do
      rem(number, divisor) == 0 ->
        false
      true ->
        check(number, divisor + 1)
    end
  end


  def is_prime(number) do
    cond do
      number <= 1 ->
        false
      number == 2 ->
        true
      number > 2 ->
        check(number, 2)
    end
  end

  def next_prime(number) do
    cond do
      is_prime(number + 1) == true ->
        number + 1
      true ->
        next_prime(number + 1)
    end
  end
end
