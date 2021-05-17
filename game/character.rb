class Character
  attr_reader :name, :offense, :defense
  attr_accessor :hp

  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end

  def calculate_damage(enemy)
    damage = (@offense - enemy.defense) / 2
    if damage > 0
      damage
    else
      damage = 0
    end
  end
end
