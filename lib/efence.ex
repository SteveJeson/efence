defmodule Efence do
  @moduledoc """
  Documentation for Efence.
  """
  use Application
  require Logger

  def start(_type, _args) do
    Logger.info("#{__MODULE__} application start")
    {:ok, pid} = Sup.EfenceSup.start_link(name: Sup.EfenceSup)
    {:ok, pid}
  end

end


