defmodule ArrayCombination do
    def of([h|t], limit), do: comb(limit, [h|t])
    defp comb(0, _), do: [[]]
    defp comb(_, []), do: []
    defp comb(m, [h|t]) do
        (for l <- comb(m-1, t), do: [h|l]) ++ comb(m, t)
    end
end
