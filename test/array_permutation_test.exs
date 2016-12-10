defmodule ArrayPermutationTest do
  use ExUnit.Case
  doctest ArrayPermutation

 test "expect to return all possible orders of a array" do
  list = [1, 2, 3]
  permutation_result = [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

  assert ArrayPermutation.of(list) == permutation_result
 end 

end
