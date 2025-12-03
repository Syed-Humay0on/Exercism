defmodule HighSchoolSweetheart do
  def first_letter(name), do: name |> String.trim() |> String.first()

  def initial(name) do
    first_letter(name)
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    case String.split(full_name) do
      [single_word] -> "#{initial(single_word)}"
      [first_word, last_word] -> "#{initial(first_word)} #{initial(last_word)}"
    end

    # words = String.split(full_name)
    # second_word = Enum.at(words, 1)
    # upsw = String.upcase(second_word)
    # swfl = String.first(upsw)
    #
    # initial(full_name)
    # |> Kernel.<>(" #{swfl}.")
  end

  def pair(full_name1, full_name2) do
    first = initials(full_name1)
    second = initials(full_name2)

    """
    ❤-------------------❤
    |  #{first}  +  #{second}  |
    ❤-------------------❤
    """
  end
end
