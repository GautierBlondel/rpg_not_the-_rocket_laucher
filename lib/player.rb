class Player 
  attr_accessor :name, :life_points
  
  def initialize(name, life_points)
    @name = name
    @life_points = life_points
  end

  def show_state
    return @life_points
  end

  def compute_damage
    return rand(1..6)
  end

  def gets_damage(damages)
    @life_points = @life_points - damages
    @life_points > 0 ? 
      "Il reste #{life_points} points de vie à #{name}" : 
      "Tu ne le sais pas encore #{name} mais tu es déjà mort(e)" 
  end
  
  def attacks(player)
    puts "#{self.name} attaque #{player.name}" 
    player.gets_damage(compute_damage)
  end
  
end 