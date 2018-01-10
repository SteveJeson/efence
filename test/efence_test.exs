defmodule EfenceTest do
  use ExUnit.Case
  doctest Efence ##module name

  test "greets the world" do
    assert Efence.hello() == :world
  end
end
