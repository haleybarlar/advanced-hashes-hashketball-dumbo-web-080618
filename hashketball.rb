# Write your code here!
require "pry"
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored(players_name)
  game_hash.each do |where, team_data|
    team_data[:players].each do |name, name_data|
      
        
          if name == players_name
            return name_data[:points]
      end
    end
  end
end

def player_by_number(number)
  #return player name with number
  game_hash.each do |where, team_data|
    team_data[:players].each do |player, name_data|
      if name_data[:number] == number
        return player
       end
end
end
end

puts player_by_number(33)    
    
def shoe_size(players_name)
    game_hash.each do |where, team_data|
    team_data.each do |players, players_data|
      if players == :players
        players_data.each do |name, name_data|
          if name == players_name
            name_data.each do |shoe, shoe_data|
              if shoe == :shoe
                return shoe_data.to_i
              end
            end
          end
        end
      end
    end
  end
end

def team_colors(team_name)
    game_hash.each do |where, team_data|
    if team_data[:team_name] == team_name
      team_data.each do |colors, colors_data|
        if colors == :colors 
          return colors_data
        end
      end
    end
  end
end


def team_names
  array = []
  game_hash.each do |where, team_data|
    team_data.each do |name, name_data|
      if name == :team_name
      array << name_data
      end
    end
  end
  return array
end

def player_numbers(team_name)
  array = []
  game_hash.each do |where, team_data|
    if team_data[:team_name] == team_name
      team_data.each do |players, players_data|
        if players == :players 
          players_data.each do |name, name_data|
            name_data.each do |type, number|
              if type == :number
                array << number
              end
            end
          end
        end
      end
    end
  end
  array
end

def player_stats(player_name)
  game_hash.each do |where, team_data|
    team_data.each do |players, players_data|
      if players == :players
        players_data.each do |name, name_data|
          if name == player_name
            return name_data
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  max = 0
  rebounds = 0
  game_hash.each do |where, team_data|
    team_data.each do |players, players_data| 
      if players == :players
        players_data.each do |name, name_data|
          if name_data[:shoe] > max
            rebounds = name_data[:rebounds]
            max = name_data[:shoe]
          end
        end
      end
    end
  end
  return rebounds
end    