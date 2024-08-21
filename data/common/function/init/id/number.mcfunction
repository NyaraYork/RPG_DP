#> common:init/id/number
# エンティティに付与するIDを取得するコマンド
    #declare score_holder #Global

# IDを取得
    scoreboard players add #Global EntityID 1
    execute as @e if score @s EntityID = #Global EntityID run return run function common:init/id/number
    return run scoreboard players get #Global EntityID
