require './character'

class Brave < Character
  def attack(monster)
    # 勇者がモンスターに攻撃する
    puts "#{@name} の攻撃!"
    #モンスターが受けるダメージの計算
    damage = calculate_damage(monster)

    # モンスターのHPから計算したダメージを引く
    cause_damage(target: monster,damage: damage)
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
