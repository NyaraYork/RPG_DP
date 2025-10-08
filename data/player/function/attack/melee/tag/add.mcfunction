#> player:attack/melee/tag/add
# 近接攻撃されたエンティティにタグを付与するコマンド

# 槍を持っていた場合線状に範囲を指定してタグを付与
    execute if entity @s[advancements={player:trigger/attacked/melee={charged=true}}] if items entity @s weapon.mainhand *[custom_data~{weapon:"spear"}] anchored eyes positioned ^ ^ ^ run return run function player:attack/melee/tag/spear/add

# 槍を持っていなかった場合IDを2進数から10進数に変換し一致するエンティティにタグを付与
    scoreboard players set #VictimID Temp 0
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit01_1=true}}] run scoreboard players add #VictimID Temp 1
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit02_1=true}}] run scoreboard players add #VictimID Temp 2
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit03_1=true}}] run scoreboard players add #VictimID Temp 4
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit04_1=true}}] run scoreboard players add #VictimID Temp 8
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit05_1=true}}] run scoreboard players add #VictimID Temp 16
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit06_1=true}}] run scoreboard players add #VictimID Temp 32
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit07_1=true}}] run scoreboard players add #VictimID Temp 64
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit08_1=true}}] run scoreboard players add #VictimID Temp 128
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit09_1=true}}] run scoreboard players add #VictimID Temp 256
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit10_1=true}}] run scoreboard players add #VictimID Temp 512
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit11_1=true}}] run scoreboard players add #VictimID Temp 1024
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit12_1=true}}] run scoreboard players add #VictimID Temp 2048
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit13_1=true}}] run scoreboard players add #VictimID Temp 4096
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit14_1=true}}] run scoreboard players add #VictimID Temp 8192
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit15_1=true}}] run scoreboard players add #VictimID Temp 16384
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit16_1=true}}] run scoreboard players add #VictimID Temp 32768
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit17_1=true}}] run scoreboard players add #VictimID Temp 65536
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit18_1=true}}] run scoreboard players add #VictimID Temp 131072
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit19_1=true}}] run scoreboard players add #VictimID Temp 262144
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit20_1=true}}] run scoreboard players add #VictimID Temp 524288
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit21_1=true}}] run scoreboard players add #VictimID Temp 1048576
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit22_1=true}}] run scoreboard players add #VictimID Temp 2097152
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit23_1=true}}] run scoreboard players add #VictimID Temp 4194304
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit24_1=true}}] run scoreboard players add #VictimID Temp 8388608
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit25_1=true}}] run scoreboard players add #VictimID Temp 16777216
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit26_1=true}}] run scoreboard players add #VictimID Temp 33554432
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit27_1=true}}] run scoreboard players add #VictimID Temp 67108864
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit28_1=true}}] run scoreboard players add #VictimID Temp 134217728
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit29_1=true}}] run scoreboard players add #VictimID Temp 268435456
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit30_1=true}}] run scoreboard players add #VictimID Temp 536870912
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit31_1=true}}] run scoreboard players add #VictimID Temp 1073741824
    execute if entity @s[advancements={player:trigger/attacked/melee={Bit32_1=true}}] run scoreboard players operation #VictimID Temp += #-2147483648 Const
    execute as @e[scores={EntityID=-2147483648..2147483647}] if score @s EntityID = #VictimID Temp run tag @s add victim

# 他の武器を持っていた場合武器種ごとに円状に範囲を指定して追加でタグを付与
    execute if entity @s[advancements={player:trigger/attacked/melee={charged=true}}] if items entity @s weapon.mainhand *[custom_data~{weapon:"axe"}] as @e[distance=..4,tag=!attacker,scores={EntityID=-2147483648..2147483647}] at @n[tag=victim] if entity @s[distance=..4] run tag @s add victim
    execute if entity @s[advancements={player:trigger/attacked/melee={charged=true}}] if items entity @s weapon.mainhand *[custom_data~{weapon:"dagger"}] as @e[distance=..3.5,tag=!attacker,scores={EntityID=-2147483648..2147483647}] at @n[tag=victim] if entity @s[distance=..3.5] run tag @s add victim
    execute if entity @s[advancements={player:trigger/attacked/melee={charged=true}}] if items entity @s weapon.mainhand *[custom_data~{weapon:"sword"}] as @e[distance=..4.5,tag=!attacker,scores={EntityID=-2147483648..2147483647}] at @n[tag=victim] if entity @s[distance=..4.5] run tag @s add victim

# スコアリセット
    scoreboard players reset #VictimID Temp
