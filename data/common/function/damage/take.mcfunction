#> common:damage/take
# ダメージを受けるコマンド

# ダメージ演出
    damage @s 0.0 mob_attack by @n[tag=attacker]
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.4 ~ summon text_display run function common:damage/indicator/init

# HPをダメージで減算し割合を計算
    scoreboard players operation @s HP -= #Damage Temp
    scoreboard players operation #HPRatio Temp = @s HPBarLength
    scoreboard players operation #HPRatio Temp *= @s HP
    scoreboard players operation #HPRatio Temp /= @s HPMax

# HPバーに反映
    execute if entity @s[type=player] run function player:attribute/hp/value
    execute if entity @s[type=!player,tag=!boss] run function mob:attribute/hp/update
    #execute if entity @s[tag=boss] run function mob:attribute/hp/bossbar/update

# HPが0以下の場合キル処理
    execute if score @s HP matches ..0 run function common:damage/kill
