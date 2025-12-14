defmodule SpaceAge do
  @type planet ::
          :mercury
          | :venus
          | :earth
          | :mars
          | :jupiter
          | :saturn
          | :uranus
          | :neptune

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet', or an error if 'planet' is not a planet.
  """
  @spec age_on(planet, pos_integer) :: {:ok, float} | {:error, String.t()}

  def age_on(:mercury, seconds) do
    mercury_seconds = 0.2408467 * 31557600   
    mercury_age = seconds/mercury_seconds
    {:ok, mercury_age}
  end

  def age_on(:venus, seconds) do
    venus_seconds = 0.61519726 * 31557600   
    venus_age = seconds/venus_seconds
    {:ok, venus_age}
  end

  def age_on(:earth, seconds) do
    earth_seconds =  1.0 * 31557600   
    earth_age = seconds/earth_seconds
    {:ok, earth_age}
  end

  def age_on(:mars, seconds) do
    mars_seconds = 1.8808158 * 31557600   
    mars_age = seconds/mars_seconds
    {:ok, mars_age}
  end

  def age_on(:jupiter, seconds) do
    jupiter_seconds = 11.862615 * 31557600   
    jupiter_age = seconds/jupiter_seconds
    {:ok, jupiter_age}
  end

  def age_on(:saturn, seconds) do
    saturn_seconds = 29.447498 * 31557600   
    saturn_age = seconds/saturn_seconds
    {:ok, saturn_age}
  end

  def age_on(:uranus, seconds) do
    uranus_seconds = 84.016846 * 31557600   
    uranus_age = seconds/uranus_seconds
    {:ok, uranus_age}
  end

  def age_on(:neptune, seconds) do
    neptune_seconds = 164.79132 * 31557600   
    neptune_age = seconds/neptune_seconds
    {:ok, neptune_age}
  end

  def age_on(planet, _seconds) do
    {:error, "invalid planet: #{inspect(planet)}"} 
  end
end
