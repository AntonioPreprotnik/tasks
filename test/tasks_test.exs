defmodule TasksTest do
  use ExUnit.Case
  import Tasks

  describe "fizz_buzz" do
    test "returns fizz for 3" do
      assert "Fizz" == fizz_buzz(3)
    end

    test "returns fuzz for 5" do
      assert "Buzz" == fizz_buzz(5)
    end

    test "returns FizzBuzz for 15" do
      assert "FizzBuzz" == fizz_buzz(15)
    end

    test "returns number for a number out of range" do
      assert -1 == fizz_buzz(-1)
      assert 101 == fizz_buzz(101)
    end
  end
end
