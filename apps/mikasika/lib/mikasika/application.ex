defmodule Mikasika.Application do
  @moduledoc """
  The Mikasika Application Service.

  The mikasika system business domain lives in this application.

  Exposes API to clients such as the `MikasikaWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      
    ], strategy: :one_for_one, name: Mikasika.Supervisor)
  end
end
