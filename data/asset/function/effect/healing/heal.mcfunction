#> asset:effect/healing/heal
# 回復をするコマンド

# 回復
    scoreboard players operation @s HP += #HealingAmount Temp

# 現在HPを最大HPの数値までに抑える
    scoreboard players operation @s HP < @s HPMax

# 回復演出
    execute if entity @s[type=player] run return run function player:heal
    function mob:heal with entity @s data
