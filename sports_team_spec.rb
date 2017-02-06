require('minitest/autorun')
require_relative('./sports_team')
require('minitest/rg')

class TestSportsTeam < MiniTest::Test

def test_add_player
  team = SportsTeam.new("Spirit", [], "Bob", 0)
  puts team
  new_player = "Charlie"
assert_equal(["Charlie"], team.add_player(new_player))
end

def test_rollcall
  team = SportsTeam.new("Spirit",["Charlie"], "Bob", 0)
  player = "Charlie"
  assert_equal("Player Present", team.rollcall(player))
end

def test_winning_points
  team = SportsTeam.new("Spirit",["Charlie"], "Bob", 0)
  game_result = true
  point_difference = 1
  assert_equal(1, team.winning_points(game_result, point_difference))

end


end