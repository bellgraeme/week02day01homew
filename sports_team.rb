class SportsTeam

  attr_accessor :team_name, :players, :coach, :points
  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players  = []
    @coach = coach
    @points = 0
  end

def add_player(new_player)
  @players << new_player
end

def rollcall(player)
  @players.include?(player)
  return "Player Present"
end

def winning_points(game_result, point_difference)
  if game_result == true
    @points += point_difference
    return @points
  end
end

end