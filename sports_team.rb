class SportsTeam

  attr_accessor :team_name, :players, :string, :points

  def initialize(team_name, players, string, points)
    @team_name = team_name
    @players = players
    @string = string
    @points = points
  end

  def add_new_player(players)
    @players.push(players)
  end



  def team_name_won_lost(points)
    if @points == points
    end
    return "Team won!"
  else
    return "Team Lost!"
  end
end
