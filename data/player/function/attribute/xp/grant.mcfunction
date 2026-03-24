#> player:attribute/xp/grant
# プレイヤーに経験値を与えるコマンド

# プレイヤーに経験値を与える
    scoreboard players operation #GrantXP Temp /= @s Level
    scoreboard players operation @s XP += #GrantXP Temp

# 経験値獲得演出
    tellraw @s [{text:"+",color:"yellow"},{score:{name:"#GrantXP",objective:"Temp"}},{text:"経験値獲得",color:"white"}]
    playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# レベルアップ判定
    execute if score @s Level matches 1..99 if score @s XP >= @s XPRequired run function player:attribute/level/up

# 経験値の進行度を計算
    execute if score @s Level matches 1..99 run scoreboard players set #XPProgress Temp 1000
    scoreboard players operation #XPProgress Temp *= @s XP
    scoreboard players operation #XPProgress Temp /= @s XPRequired

# 経験値バーに反映
    execute store result storage player: xp.point int 1 run scoreboard players get #XPProgress Temp
    execute store result storage player: xp.level int 1 run scoreboard players get @s Level
    xp set @s 129 levels
    function player:attribute/xp/update with storage player: xp

# リセット
    scoreboard players reset #XPProgress Temp
    data remove storage player: xp
