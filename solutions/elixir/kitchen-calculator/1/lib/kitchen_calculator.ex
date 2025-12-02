defmodule KitchenCalculator do
  def get_volume({_unit, volume_pair}) do
    volume_pair
  end

  def to_milliliter({:cup, volume_pair}), do: {:milliliter, volume_pair * 240}
  def to_milliliter({:fluid_ounce, volume_pair}), do: {:milliliter, volume_pair * 30}
  def to_milliliter({:teaspoon, volume_pair}), do: {:milliliter, volume_pair * 5}
  def to_milliliter({:tablespoon, volume_pair}), do: {:milliliter, volume_pair * 15}
  def to_milliliter({:milliliter, volume_pair}), do: {:milliliter, volume_pair}

  def from_milliliter({:milliliter, volume_pair}, :milliliter), do: {:milliliter, volume_pair}
  def from_milliliter({:milliliter, volume_pair}, :cup), do: {:cup, volume_pair / 240}

  def from_milliliter({:milliliter, volume_pair}, :fluid_ounce),
    do: {:fluid_ounce, volume_pair / 30}

  def from_milliliter({:milliliter, volume_pair}, :teaspoon), do: {:teaspoon, volume_pair / 5}

  def from_milliliter({:milliliter, volume_pair}, :tablespoon),
    do: {:tablespoon, volume_pair / 15}

  def convert(volume_pair, desired_unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(desired_unit)
  end
end
