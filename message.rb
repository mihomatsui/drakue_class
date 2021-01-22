

puts <<~TEXT
#{target.name} があらわれた！
#{@name} の攻撃!
#{target.name}に#{@damage} のダメージを与えた！
*=*=*=*=*=*=*=*=*=*=*
【#{@name}】HP: #{@hp}
【#{target.name}】HP: #{target.hp}
*=*=*=*=*=*=*=*=*=*=*
TEXT
