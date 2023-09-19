defmodule SlimFormatterTest do
  use ExUnit.Case

  test "maps; mixed diff" do
    map1 = Enum.into(1..15, %{}, &{&1, &1}) |> Map.delete(13)
    map2 = Enum.reduce(5..10, map1, &Map.delete(&2, &1)) |> Map.put(13, 13) |> Map.put(12, 32)
    assert map1 == map2
  end

  test "list; mixed diff" do
    list1 = Enum.map(1..15, & &1)
    list2 = Enum.map(1..5, & %{&1 => &1 * 10}) ++ Enum.map(8..20, & &1)
    assert list1 == list2
  end
end
