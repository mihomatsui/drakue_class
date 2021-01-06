class Brave < Character
end

class Monster < Character
end

class Character
  def initialize()
    @name
    @hp
    @offense
    @defense
end

# クラス:Character
# 情報:name,hp,offense(攻め),defense(防御)
# 役割：-(なし。存在のみ)

# クラス:Brave
# 情報:Character
# 役割：モンスターと戦う

# クラス:Monster
