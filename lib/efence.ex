defmodule Efence do
  @moduledoc """
  Documentation for Efence.
  """
  use Application

  def start(_type, _args) do
    {:ok, pid} = Sup.EfenceSup.start_link(name: Sup.EfenceSup)
    {:ok, pid}
  end

end


