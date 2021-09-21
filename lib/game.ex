defmodule Gamex.Game do
  @keys [:title, :publisher, :release_date]

  @enforce_keys @keys
  defstruct @keys

  def build(title, publisher, release_date) do
    %__MODULE__{
      title: title,
      publisher: publisher,
      release_date: release_date
    }
  end
end
