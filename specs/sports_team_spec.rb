require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')
class SportsTeamTest < MiniTest::Test
  def test_sports_get_team
    sports_team = SportsTeam.new("Celtic", ["Stuart", "Charlie", "Kenny"],"Coach", [0,5,10])
    assert_equal("Celtic", sports_team.team_name)
  end
  def test_sports_set_team
    sports_team = SportsTeam.new("Celtic", ["Stuart", "Charlie", "Kenny",],"Coach", [0,5,10])
    sports_team.team_name = "Rangers"
    assert_equal("Rangers", sports_team.team_name)
  end
  def test_sports_get_players
    sports_team = SportsTeam.new("Celtic", ["Stuart", "Charlie", "Kenny"],"Coach", [0,5,10])
    assert_equal(["Stuart", "Charlie", "Kenny"], sports_team.players)
  end
  def test_sports_set_players
    sports_team = SportsTeam.new("Celtic", ["Stuart", "Charlie", "Kenny"],"Coach",[0,5,10])
    sports_team.players = ["Alfredo", "Jermain", "Allan"]
    assert_equal(["Alfredo", "Jermain", "Allan"], sports_team.players)
  end
  def test_sports_get_string
    sports_team = SportsTeam.new("Celtic", ["Stuart", "Charlie", "Kenny"],"Coach",[0,5,10])
    assert_equal("Coach",sports_team.string)
  end

  def test_sports_set_string
    sports_team = SportsTeam.new("Celtic", ["Stuart", "Charlie", "Kenny"],"Coach",[0,5,10])
    sports_team.string = "Trainer"
    assert_equal("Trainer",sports_team.string)
  end



  def test_sports_add_new_player
    sports_team = SportsTeam.new("Celtic", ["Stuart", "Charlie", "Kenny"],"Coach",[0,5,10])
    result = sports_team.add_new_player("Ryan")
    assert_equal( ["Stuart", "Charlie", "Kenny","Ryan"], result)
  end
  def test_sports_get_team_points
    sports_team = SportsTeam.new("Celtic", ["Stuart", "Charlie", "Kenny"],"Coach", [0,5,10])
    assert_equal([0,5,10], sports_team.points)
  end

  def test_team_points_updates
    sports_team = SportsTeam.new("Celtic", ["Stuart", "Charlie", "Kenny"],"Coach", [0,5,10])
    sports_team.points = [10,15,20]
    assert_equal([10,15,20], sports_team.points)
  end
  def test_team_name_won_lost
    sports_team = SportsTeam.new("Celtic", ["Stuart", "Charlie", "Kenny"],"Coach", [10,15,20] )
    result = sports_team.team_name_won_lost([10,15,20])
    assert_equal("Team won!", result)
  end
end
