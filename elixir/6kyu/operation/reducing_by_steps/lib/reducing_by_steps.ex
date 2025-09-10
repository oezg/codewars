defmodule ReducingBySteps do
  @moduledoc false

  def som(a, b), do: a + b
  def mini(a, b), do: min(a, b)
  def maxi(a, b), do: max(a, b)
  def gcdi(a, b), do: Integer.gcd(abs(a), abs(b))
  def lcmu(a, b), do: div(abs(a) * abs(b), gcdi(a, b))

  def oper_array(fct, arr, init) do
    # Enum.reduce(arr, [init], fn n, [h | t] -> [fct.(n, h), h | t] end)
    # |> Enum.reverse()
    # |> Enum.drop(1)
    Enum.scan(arr, init, fct)
  end
end
