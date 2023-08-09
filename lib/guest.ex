defmodule Guest do
  @moduledoc """
  Function to handle events guest
  """
  @default_name "No name"

  def new(), do: new(@default_name)

  def new(nil), do: new(@default_name)

  def new(""), do: new(@default_name)

  @doc """
  Accept a name for the guest and return a map with
  a guest name and randomly generated ID.

  ## Examples
       iex> name = "Nami"
       iex> Guest.new(name)
  """
  def new(name) do
    IO.puts("New guest #{name}")
    id = :rand.uniform(100)
    %{id: id, name: name}
  end
end
