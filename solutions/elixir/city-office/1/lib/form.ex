defmodule Form do
  @moduledoc """
  A collection of loosely related functions helpful for filling out various forms at the city office.
  """

  @doc """
  Generates a string of a given length.
  """
  @spec blanks(n :: non_neg_integer()) :: String.t()
  def blanks(n) do
    String.duplicate("X", n)
  end

  @doc """
  Splits the string into a list of uppercase letters.
  """
  @spec letters(word :: String.t()) :: list(String.t())
  def letters(word) do
    word
    |> String.upcase()
    |> String.split("", trim: true)
  end

  @doc """
  Checks if the value has no more than the maximum allowed number of letters.
  """
  @spec check_length(word :: String.t(), length :: non_neg_integer()) :: :ok | {:error, number()}
  def check_length(word, length) do
    diff = String.length(word) - length

    if diff <= 0 do
      :ok
    else
      {:error, diff}
    end
  end

  @type address_map :: %{street: String.t(), postal_code: String.t(), city: String.t()}
  @type address_tuple :: {street :: String.t(), postal_code :: String.t(), city :: String.t()}
  @type adress :: address_map() | address_tuple()

  @spec format_address(adress()) :: String.t()
  def format_address(%{street: street, postal_code: postal_code, city: city}) do
    format_address({street, postal_code, city})
  end

  # tuple function body
  def format_address({street, postal_code, city}) when is_binary(postal_code) do
    "#{street}, #{postal_code}, #{city}"
  end

  @doc """
  Formats the address as an uppercase multiline string.
  """
  @spec format_address(
          {street :: String.t(), postal_code :: non_neg_integer(), city :: String.t()}
        ) :: String.t()
  def format_address({street, postal_code, city})
      when is_integer(postal_code) and postal_code >= 0 do
    postal_string_code = Integer.to_string(postal_code)

    """
    #{String.upcase(street)}
    #{String.upcase(postal_string_code)} #{String.upcase(city)}
    """
  end
end
