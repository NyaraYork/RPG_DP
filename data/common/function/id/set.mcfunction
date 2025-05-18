#> common:id/set
# エンティティにIDを付与するコマンド

# IDを付与
    scoreboard players add #EntityID Global 1
    execute as @e[scores={EntityID=-2147483648..2147483647}] if score @s EntityID = #EntityID Global run return run function common:id/set
    return run scoreboard players get #EntityID Global
