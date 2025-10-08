#> common:damage/deal
# ダメージを与えるコマンド

# ダメージ演出
    damage @s 0.0 mob_attack by @n[tag=attacker]
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.4 ~ summon text_display run function common:damage/indicator/init

# HPをダメージで減算し0以下になった場合キル
    scoreboard players operation @s HP -= #Damage Temp
    execute if score @s HP matches ..0 run function common:damage/kill
