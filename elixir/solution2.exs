require Integer

defmodule Solution do
  @ceiling 4000000

  def sum(number, previous, _accumulator) when previous == nil do
    sum(number + 1, number, 0)
  end

  def sum(number, previous, _accumulator) when number <= 1 do
    sum(number + 1, number, previous)
  end

  def sum(number, previous, accumulator) when number <= @ceiling and Integer.is_even(number) do
    sum(number + previous, number, number + accumulator)
  end

  def sum(number, previous, accumulator) when number <= @ceiling and Integer.is_odd(number) do
    sum(number + previous, number, accumulator)
  end

  def sum(_number, _previous, accumulator) do
    accumulator
  end
end

IO.puts Solution.sum(0, nil, 0)
