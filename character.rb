class Character
  attr_accessor :hp
  attr_reader :name, :offense, :defense

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  private
    def calculate_damage(target)
      @offense - target.defense / 2
    end

    def cause_damage(**params)
      damage = params[:damage]
      target = params[:target]

      target.hp -= damage
      target.hp = 0 if target.hp < 0
      puts "#{target.name} に #{damage} のダメージを与えた!"
    end
end
