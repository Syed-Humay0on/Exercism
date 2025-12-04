defmodule HighScore do
  def new() do
    %{}
  end

  @score 0
  def add_player(scores, name, score \\ @score) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    Map.put(scores, name, @score)
  end

  def update_score(scores, name, score) do
    current_score = Map.get(scores, name, @score)
    new_total_score = current_score + score
    Map.put(scores, name, new_total_score)
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
