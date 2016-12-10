defmodule ArrayPermutation do
  def of([h|t]), do: permute([h|t])
  defp permute([]), do: [[]]
  defp permute(list), do: for elem <- list, rest <- permute(list--[elem]), do: [elem|rest]
  
end
