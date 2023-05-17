defmodule CircuitsV2.I2C.NilBackend do
  @moduledoc """
  CircuitsV2.I2C backend when nothing else is available
  """
  @behaviour CircuitsV2.I2C.Backend

  alias CircuitsV2.I2C.Backend

  @doc """
  Return the I2C bus names on this system

  No supported options
  """
  @impl Backend
  def bus_names(_options), do: []

  @doc """
  Open an I2C bus

  No supported options.
  """
  @impl Backend
  def open(_bus_name, _options) do
    {:error, :unimplemented}
  end

  @doc """
  Return information about this backend
  """
  @impl Backend
  def info() do
    %{name: __MODULE__}
  end
end
