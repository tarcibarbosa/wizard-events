defmodule Register do
  @moduledoc """
  	Register a new guest in the wizard event
  """
  alias Guest
  alias WizardEvent, as: Schedule

  @doc """
  Accept name and return a map

  ## Examples
      iex> name = "Smoke"
      iex> Register.new(name)
  """
  def new(name) do
    Guest.new(name)
    |> Schedule.add()
    |> display()
  end

  defp display(guest) do
    IO.puts("#{guest.name}, Let the magic begin!")
    for event <- guest.events, do: IO.puts(event)
  end
end
