#> player:attribute/level/up
# プレイヤーをレベルアップさせるコマンド

# 必要経験値量を計算
    function player:attribute/xp/calc

# ステータス更新
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID
    function player:effect/attribute/get with storage common: ID
    function player:attribute/update

# レベルアップ演出
    tellraw @s [{text:"レベルが",color:"green"},{score:{name:"@s",objective:"Level"}},{text:"に上がった！"}]
    playsound entity.player.levelup player @s ~ ~ ~ 1 1
