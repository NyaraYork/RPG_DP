#> player:attack/melee/set_multiplier
# 攻撃のチャージ率に応じてダメージ倍率を設定するコマンド

# ダメージ倍率を設定
    execute if entity @s[advancements={player:trigger/attacked/melee={uncharged_0-0.249=true}}] run return run scoreboard players set #DMGMultiplier Temp 200
    execute if entity @s[advancements={player:trigger/attacked/melee={uncharged_0.25-0.333=true}}] run return run scoreboard players set #DMGMultiplier Temp 250
    execute if entity @s[advancements={player:trigger/attacked/melee={uncharged_0.334-0.499=true}}] run return run scoreboard players set #DMGMultiplier Temp 333
    execute if entity @s[advancements={player:trigger/attacked/melee={uncharged_0.5-0.999=true}}] run return run scoreboard players set #DMGMultiplier Temp 500
    execute if entity @s[advancements={player:trigger/attacked/melee={charged=true}}] run return run scoreboard players set #DMGMultiplier Temp 1000
    execute if entity @s[advancements={player:trigger/attacked/melee={crit=true}}] run scoreboard players set #DMGMultiplier Temp 1500
