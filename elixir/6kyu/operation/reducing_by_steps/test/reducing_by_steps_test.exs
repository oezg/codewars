defmodule ReducingByStepsTest do
  use ExUnit.Case
  doctest ReducingBySteps

  defp testing(numtest, fct, arr, init, ans) do
    IO.puts("Test #{numtest}")
    assert ReducingBySteps.oper_array(fct, arr, init) == ans
  end

  test "oper_array" do
    a = [18, 69, -90, -78, 65, 40]

    r = [18, 3, 3, 3, 1, 1]
    testing(1, &ReducingBySteps.gcdi/2, a, 18, r)
    r = [18, 414, 2070, 26910, 26910, 107_640]
    testing(2, &ReducingBySteps.lcmu/2, a, 18, r)
    r = [18, 87, -3, -81, -16, 24]
    testing(3, &ReducingBySteps.som/2, a, 0, r)
    r = [18, 18, -90, -90, -90, -90]
    testing(4, &ReducingBySteps.mini/2, a, 18, r)
    r = [18, 69, 69, 69, 69, 69]
    testing(5, &ReducingBySteps.maxi/2, a, 18, r)

    a = [53, 83, 54, -58, -20, 56, 57, 10]
    r = [53, 4399, 237_546, 6_888_834, 68_888_340, 964_436_760, 18_324_298_440, 18_324_298_440]
    testing(200, &ReducingBySteps.lcmu/2, a, 53, r)
  end
end
