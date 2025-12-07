defmodule TwoFer do
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t() | nil) :: String.t()
  def two_fer(), do: two_fer("you")

  def two_fer(name) when name != nil and name != "" do
    if String.trim(name) == "" do
      two_fer("you")
    else
      "One for #{name}, one for me."
    end
  end

  def two_fer(_name), do: "One for you, one for me."
end
