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
end
