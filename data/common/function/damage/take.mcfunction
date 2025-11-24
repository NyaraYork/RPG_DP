#> common:damage/take
# ダメージを受けるコマンド

# HPをダメージで減算
    scoreboard players operation @s HP -= #Damage Temp

# ダメージ演出
    execute if entity @s[type=player] run function player:hurt
    execute if entity @s[type=!player] run function mob:hurt with entity @s data
