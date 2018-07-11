defmodule PolTest do
  use ExUnit.Case
  doctest Pol

  test "greets the world" do
    assert Pol.hello() == :world
  end
end
