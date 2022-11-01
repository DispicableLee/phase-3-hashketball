# Write your code below game_hash
require "pry"
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(name)
  game_hash.each do |team, data|
    data.each do |attribute, value|
      if attribute == :players
        value.each do |s|
          if s[:player_name] == name
            puts s[:points]
          end
        end
      end
    end
  end
end

num_points_scored("Kemba Walker")



def num_points_scored(name)
  game_hash.each do |team, data|
    data.each do |attribute, value|
      if attribute == :players
        value.each do |s|
          if s[:player_name] == name
            puts s[:shoe]
          end
        end
      end
    end
  end
end

num_points_scored("Kemba Walker")

def team_colors(t)
  c = []
  game_hash.each do |team, data|
    data.each do |s, value|
      if s == :team_name
        if value == t
          data[:colors].each {|color| c.push(color)}
        end
      end
    end
  end
  puts c
end

team_colors("Brooklyn Nets")

def team_names
  n = []
  game_hash.each do |team, data|
    data.each do |attribute,value|
      if attribute == :team_name
        n.push(value)
      end
    end
  end
  puts n
end

team_names

def player_numbers(t_name)
  j = []
  game_hash.each do |team, data|
    if data[:team_name] == t_name
      data.each do |attribute, value|
        if attribute == :players
          value.each do |s|
            j.push(s[:number])
          end
        end
      end
    end
  end
  puts j
end

player_numbers("Brooklyn Nets")

def player_stats(playa)
  game_hash.each do |team, data|
    data.each do |attribute, value|
      if attribute == :players
        value.each do |s|
          if s[:player_name] == playa
            puts s
          end
        end
      end
    end
  end
end

player_stats("Alan Anderson")

def big_shoe_rebounds
  game_hash.each do |team, data|
    data.each do |attribute, value|
      if attribute == :players
        value.each do |s|
