require_relative "player.rb"

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name, life_points, weapon_level)
    @weapon_level = weapon_level

    super(name, life_points)
  end

  def show_state
    puts "Nous avons #{name} avec #{life_points} points de vie et une arme de niveau #{weapon_level}"
  end

  def compute_damage
    return rand(1..6) * weapon_level
  end

  def search_weapon
    new_weapon_level = rand(1..6)
    # puts "new_weapon_level #{new_weapon_level}"
    # puts "weapon_level #{@weapon_level}"
      if new_weapon_level > @weapon_level
        puts "ça passe"
        @weapon_level = new_weapon_level
        puts "Tu as trouvé une arme de niveau #{@weapon_level}"
      else 
        puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
        @weapon_level
      end
    return @weapon_level
  end

  def search_health_packs
    dice = rand(1..6)

    puts "health_pack_conditions #{dice}"
    
    case dice
    when 1
      puts "Tu n'as rien trouvé... "
    when 2..5
      puts "Bravo, tu as trouvé un pack de +50 points de vie !"
      @life_points = @life_points + 50
    when 6
      puts "Waow, tu as trouvé un pack de +80 points de vie !"
      @life_points = @life_points + 50
    end
    


    if @life_points > 100
      @life_points = 100
    end
  end

end