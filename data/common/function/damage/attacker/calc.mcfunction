#> common:damage/attacker/calc
# 攻撃したエンティティの与ダメージを計算するコマンド

# 攻撃力をダメージ倍率で乗算
    scoreboard players operation #Damage Temp = @s ATK
    #scoreboard players operation #Damage Temp *= #DMGMultiplier Temp
    #scoreboard players operation #Damage Temp /= #1000 Const

# 与ダメージバフで乗算
    scoreboard players set #DMGBonus Temp 1000
    $scoreboard players operation #DMGBonus Temp += @s $(element)DMGBonus
    scoreboard players operation #Damage Temp *= #DMGBonus Temp
    scoreboard players operation #Damage Temp /= #1000 Const

# 会心が発生した場合会心ダメージで乗算
    scoreboard players set #CritDMG Temp 1000
    execute store result score #CritChance Temp run random value 1..1000
    execute if score #CritChance Temp <= @s CritRate run scoreboard players operation #CritDMG Temp += @s CritDMG
    scoreboard players operation #Damage Temp *= #CritDMG Temp
    scoreboard players operation #Damage Temp /= #1000 Const

# レベルで乗算
    scoreboard players operation #Damage Temp *= @s Level
