#> common:damage/take
# ダメージを受けるコマンド

# HPをダメージで減算
    scoreboard players operation @s HP -= #Damage Temp

# ダメージ演出
    execute if entity @s[type=player] run function player:attribute/hp/value
    execute if entity @s[type=!player] run function mob:hurt with entity @s data

# HPが0以下の場合キル処理
    execute if score @s HP matches ..0 run function common:damage/kill
