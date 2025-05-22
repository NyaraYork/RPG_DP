#> mob:init
# 敵モブの初期化をするコマンド
    #declare tag vehicle

# エンティティIDを付与
    execute store result score @s EntityID run function common:id/set

# モブIDを付与
    data modify entity @s data.ID set from storage spawner: data.ID

# レベルを取得
    scoreboard players operation @s Level = #MobLevel Temp

# 敵モブのレベルを表示
    tag @s add vehicle
    execute summon text_display run function mob:display/level/init

# 敵モブのHPバーを初期化
    execute summon text_display run function mob:display/hp/init
    tag @s remove vehicle
