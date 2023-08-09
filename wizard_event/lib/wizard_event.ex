defmodule WizardEvent do
  @moduledoc """
  Function to register into WizardEvent.
  """
  alias Guest

  @doc """
  Add events for a guest
  """
  def add(value) when is_map(value) do
    Map.put(value, :events, get_events())
  end

  @doc """
  Get the schedule events sort by time
  """
  def get_events() do
    schedule()
    |> Enum.sort()
  end

  defp schedule() do
    [
      "11:00 - #{events_normalize("wands")} in Room A",
      "09:00 - #{events_normalize(" ALCHEMY ")} in Room B",
      "15:00 - #{events_normalize("Advanced Cauldrons")} in Room B",
      "13:00 - #{events_normalize("ELeMeNtS")} 101 in Room A"
    ]
  end

  defp events_normalize(e) do
    e
    |> String.downcase()
    |> String.trim()
    |> String.capitalize()
  end
end
