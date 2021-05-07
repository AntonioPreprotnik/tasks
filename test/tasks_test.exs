defmodule TaskTsest do
  use ExUnit.Case
  import Tasks

  describe "Nomatch" do
    test "return no solution" do
      assert "no solution" == find_first("aabb")
    end

    test "return a for wawer" do
      assert "a" == find_first("wawer")
    end

    test "return b for abanox" do
      assert "b" == find_first("abanox")
    end
  end
end
