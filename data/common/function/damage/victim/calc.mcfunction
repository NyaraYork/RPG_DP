#> common:damage/victim/calc
# 攻撃されたエンティティの被ダメージを計算するコマンド

# 攻撃されたエンティティの防御力で被ダメージを除算
    scoreboard players operation #Damage Temp /= @s DEF

# 耐性値を取得しダメージ軽減
    scoreboard players set #RES Temp 1000
    $scoreboard players operation #RES Temp -= @s $(element)RES
    scoreboard players operation #Damage Temp *= #RES Temp
    scoreboard players operation #Damage Temp /= #1000 Const
