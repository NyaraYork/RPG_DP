#> mob:init
# モブの初期化をするコマンド

# エンティティIDと2進数タグを付与
    function common:id/tag/add

# モブIDを付与
    data modify entity @s data.ID set from storage spawner: data.ID

# レベルを取得
    scoreboard players operation @s Level = #MobLevel Temp

# ステータス補正値を適用
    function common:attribute/calc

# HPを満タンまで回復する
    scoreboard players operation @s HP = @s HPMax

# モブのレベルを表示
    tag @s add vehicle
    execute summon text_display run function mob:attribute/level/display

# モブのHPバーを初期化
    execute summon text_display run function mob:attribute/hp/init
    tag @s remove vehicle
