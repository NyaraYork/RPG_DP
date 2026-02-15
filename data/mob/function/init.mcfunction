#> mob:init
# モブの初期化をするコマンド

# エンティティIDを付与
    execute store result score @s EntityID run function common:id/get

# オーナーIDを付与
    scoreboard players operation @s OwnerID = @s EntityID

# モブIDを付与
    data modify entity @s data.ID set from storage spawner: data.ID

# レベルを取得
    scoreboard players operation @s Level = #MobLevel Temp

# ステータス補正値を適用
    function common:attribute/calc

# HPを満タンまで回復する
    scoreboard players operation @s HP = @s HPMax

# ダメージ耐性とノックバック耐性を付与
    effect give @s minecraft:resistance infinite 255 true
    attribute @s minecraft:knockback_resistance base set 1.0
