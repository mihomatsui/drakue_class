require "./character"

class Monster < Character
  def attack(brave)
    # モンスターが勇者に攻撃する
    puts "#{@name} の攻撃!"
    # 勇者が受けるダメージの計算
    damage = calculate_damage(brave)
    cause_damage(target: brave, damage: damage)
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
