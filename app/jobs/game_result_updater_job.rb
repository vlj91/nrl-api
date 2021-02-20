class GameResultUpdaterJob < ApplicationJob
  queue_as :default

  def perform(*args)
    for game in Game.all.where(result: nil)
      next if game.date.to_date > Date.today.strftime("%Y-%m-%d").to_date 
      if game.home_team_points > game.away_team_points
        game.result = 'home'
      elsif game.away_team_points > game.home_team_points
        game.result = 'away'
      elsif game.home_team_points == game.away_team_points
        game.result = 'draw'
      end

      game.save!
    end
  end
end
