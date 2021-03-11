defmodule ListLengthTest do
  use ExUnit.Case
  doctest ListLength

  describe "call/1" do
    test "returns 0 when list is empty" do
      result = ListLength.call([])
      expectation = 0

      assert result == expectation
    end

    test "returns the length when the list is not empty" do
      result = ListLength.call([1, 1, 1, :foo])
      expectation = 4

      assert result == expectation
    end
  end
end
