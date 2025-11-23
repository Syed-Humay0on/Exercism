defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount * (1 - discount/100)
  end

  def monthly_rate(hourly_rate, discount) do
    monthly_before_discount = daily_rate(hourly_rate) * 22
    discounted = apply_discount(monthly_before_discount, discount)
    ceil(discounted)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate = daily_rate(hourly_rate)
    discounted = apply_discount(daily_rate, discount)
    Float.floor(budget/discounted, 1) 
  end
end
