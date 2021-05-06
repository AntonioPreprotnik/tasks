defmodule Tasks do
  def fizz_buzz(n) when n < 1 or n > 100 do
    n
  end

  def fizz_buzz(n) do
    case {rem(n, 3) == 0, rem(n, 5) == 0} do
      {false, true} -> "Buzz"
      {true, false} -> "Fizz"
      {true, true} -> "FizzBuzz"
      {false, false} -> n
    end
  end
end
