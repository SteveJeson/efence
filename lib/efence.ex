defmodule Efence do
  @moduledoc """
  Documentation for Efence.
  """
  use Application

  def start(_type, _args) do
    EfenceSup.Supervisor.start_link(name: EfenceSup.Supervisor)
  end
  @doc """
  Hello world.

  ## Examples

      iex> Efence.hello
      :world

  """
  def hello do
    :world
  end
  def sum(a, b) do
    sum = a + b
    {:ok, sum}
  end
end
