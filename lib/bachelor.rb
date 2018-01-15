def get_first_name_of_season_winner(data, season)
  name = []
  data.each do |seasons, arrays|
    if season == seasons
      arrays.each do |contestant|
        contestant.each do |key, value|
          if key == "status" && value == "Winner"
            name = contestant["name"].split
          end
        end
      end
    end
  end
  name[0]
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |seasons, arrays|
    arrays.each do |contestant|
      contestant.each do |key, value|
        if value == occupation
          name << contestant["name"]
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, arrays|
    arrays.each do |contestant|
      contestant.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, arrays|
    arrays.each do |contestant|
      contestant.each do |key, value|
        if value == hometown
          return contestant["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  num_contestants = 0
  data.each do |seasons, arrays|
    if seasons == season
      arrays.each do |contestant|
        contestant.each do |key, value|
          if key == "age"
            num_contestants += 1
            total_age += value.to_f
          end
        end
      end
    end
  end
  (total_age / num_contestants).round
end
