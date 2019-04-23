defmodule Problem1 do
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

  def solve(number) do
    multiples = Enum.filter 1..(number-1), fn x -> (rem(x, 3) == 0) || (rem(x, 5) == 0) end
    Enum.reduce multiples, 0, &(&1 + &2)
  end


end