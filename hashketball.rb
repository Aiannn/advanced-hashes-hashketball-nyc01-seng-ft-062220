# Write your code below game_hash
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

def num_points_scored(player)
  game_hash().each do |key, value|
    value[:players].each do |element|
      if element[:player_name] == player 
        return element[:points]
      end   
    end   
  end   
end 

def shoe_size(player)
  game_hash.each do |key, value|
    value[:players].each do |element|
      if element[:player_name] == player 
        return element[:shoe]
      end
    end 
  end
end   

def team_colors(puts_team_name)
  colors = []
  game_hash.each do |key, value|
    if value[:team_name] == puts_team_name
      colors = value[:colors]
    end   
  end
  return "#{colors[0]}", "#{colors[1]}"
end 

def team_names
  a = []
  game_hash.each do |key, value|
    a.push(value[:team_name])
  end
  return a 
end

def player_numbers(team_name_put)
  a = []
  game_hash.each do |key, value|
    if value[:team_name] == team_name_put 
      value[:players].each do |element|
        a.push(element[:number])
      end
    end
  end
  return a
end   

def player_stats(player)
  game_hash.each do |key, value|
    value[:players].each do |element|
      if element[:player_name] == player 
        return element 
      end
    end
  end
end

def big_shoe_rebounds
  shoe_max = 0 
  a = 0 
  game_hash.each do |key, value|
    value[:players].each do |element|
      if element[:shoe] > shoe_max
        shoe_max = element[:shoe]
        a = element[:rebounds]
      end
    end
  end
  return a 
end

def most_points_scored
  max_point = 0 
  max_player =""
  game_hash.each do |key, value|
    value[:players].each do |element|
      if element[:points] > max_point
        max_point = element[:points]
        max_player = element[:player_name]
      end
    end
  end
  puts "#{max_player} scored #{max_point} points"
end  

def winning_team
  sum = 0 
  sum2 = 0 
  game_hash.each do |key, value|
      puts value
  end
end   

def player_with_the_longest_name
  longest_name_number = 0 
  longest_name = ""
  game_hash.each do |key, value|
    value[:players].each do |element|
      if element[:player_name].length > longest_name_number
        longest_name_number = element[:player_name].length
        longest_name = element[:player_name]
      end   
    end
  end
  puts "#{longest_name} has the longest name in #{longest_name_number} symbols"
  return longest_name 
end

def long_name_steals_a_ton
  max_number_of_steals = 0 
  name_of_player = ""
  game_hash.each do |key, value|
    value[:players].each do |element|
      if element[:steals] > max_number_of_steals
        max_number_of_steals = element[:steals] 
        name_of_player = element[:player_name]
      end
    end
  end
  if name_of_player == longest_name
    puts longest name 
  end   
end  

long_name_steals_a_ton