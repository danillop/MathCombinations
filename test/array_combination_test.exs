defmodule ArrayCombinationTest do
  use ExUnit.Case
  doctest ArrayCombination

  test "expect to return all possibilits combinations of an array with group limit eq to 4" do
    list = [1, 2, 3, 4, 5]
    combination_result = [[1, 2, 3, 4], [1, 2, 3, 5], [1, 2, 4, 5], [1, 3, 4, 5], [2, 3, 4, 5]]

    assert ArrayCombination.of(list, 4) == combination_result 
  end

  test "expect to return all possibilits combinations of an array with group limit eq to 2" do
    list = [1, 2, 3, 4, 5]
    combination_result = [[1, 2], [1, 3], [1, 4], [1, 5], [2, 3], [2, 4], [2, 5], [3, 4], [3, 5], [4, 5]]

    assert ArrayCombination.of(list, 2) == combination_result
  end
end

