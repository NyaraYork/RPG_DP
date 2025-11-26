#> player:attribute/xp/grant
# プレイヤーに経験値を与えるコマンド

# 経験値獲得演出
    tellraw @s [{"text":"経験値獲得"},{"text":"+","color":"yellow"},{"score":{"name":"#GrantXP","objective":"Temp"},"color":"yellow"}]
    playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# プレイヤーに経験値を与えレベルアップ判定
    scoreboard players operation @s XP += #GrantXP Temp
    execute if score @s Level matches 1..99 if score @s XP >= @s XPRequired run function player:attribute/level/up
