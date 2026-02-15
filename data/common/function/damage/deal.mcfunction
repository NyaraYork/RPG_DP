#> common:damage/deal
# ダメージを与えるコマンド

# HPをダメージで減算
    scoreboard players operation @s HP -= #Damage Temp

# ノックバック
    execute if score @s HP matches 1.. run function lib:motion/set

# ダメージ演出
    execute if entity @s[type=player] run return run function player:hurt
    function mob:hurt with entity @s data
