defmodule TasksTest do
  use ExUnit.Case
  import Tasks

  describe "frequencies" do
    test "ping" do
      result = frequencies("ping PING PiNg pInG")

      assert Map.has_key?(result, "ping")
      refute Map.has_key?(result, "PING")
      assert 4 == Map.get(result, "ping")
    end
  end
end
