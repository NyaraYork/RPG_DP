#> player:attribute/level/up
# プレイヤーのレベルをアップするコマンド

# レベルアップ
    scoreboard players add @s Level 1

# 獲得した経験値は超過した分だけ残す
    scoreboard players operation @s XP -= @s XPRequired

# 次のレベルに必要な経験値を計算
    scoreboard players set @s XPRequired 2
    scoreboard players operation @s XPRequired += @s Level
    scoreboard players operation @s XPRequired *= @s Level

# 獲得した経験値が必要な経験値を下回るまでレベルアップ
    execute if score @s Level matches 1..99 if score @s XP >= @s XPRequired run return run function player:attribute/level/up

# ステータス更新
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID
    function player:effect/attribute/get with storage common: ID
    function player:attribute/update

# レベルアップ演出
    tellraw @s [{text:"レベルが",color:"green"},{score:{name:"@s",objective:"Level"}},{text:"に上がった！"}]
    playsound entity.player.levelup player @s ~ ~ ~ 1 1
