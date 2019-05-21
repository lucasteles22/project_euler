defmodule Solution do
  @ceiling 1000

  def sum(number, accumulator) when number < @ceiling do
    cond do
      rem(number, 3) == 0 ->
        sum(number + 1, accumulator + number)
      rem(number, 5) == 0 ->
        sum(number + 1, accumulator + number)
      true ->
        sum(number + 1, accumulator)
    end
  end

  def sum(_number, accumulator) do
    accumulator
  end
end

IO.puts Solution.sum(0, 0)
