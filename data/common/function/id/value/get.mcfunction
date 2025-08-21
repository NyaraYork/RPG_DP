#> common:id/value/get
# エンティティのIDを取得するコマンド

# IDを取得
    scoreboard players add #EntityID Global 1
    execute as @e[scores={EntityID=-2147483648..2147483647}] if score @s EntityID = #EntityID Global run return run function common:id/value/get
    return run scoreboard players get #EntityID Global
