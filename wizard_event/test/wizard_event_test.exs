defmodule WizardEventTest do
  use ExUnit.Case, async: true
  doctest WizardEvent

  @default_guest %{id: 1, name: "Nami"}

  @default_events [
      "09:00 - Alchemy in Room B",
      "11:00 - Wands in Room A",
      "13:00 - Elements 101 in Room A",
      "15:00 - Advanced cauldrons in Room B"
    ]

  test "successfully add wizard event a new guest" do
    guest = WizardEvent.add(@default_guest)
    assert is_map(guest)
  end

  test "successfully get list of wizard events sorted" do
    events = WizardEvent.get_events()
    assert events === @default_events
  end
end
