#> player:display/attribute/shield/bar/add
# プレイヤーにシールド表示バーを追加するコマンド

# HPに対するシールドの割合を計算
    scoreboard players set #Shield Temp 20
    scoreboard players operation #Shield Temp *= @s Shield
    scoreboard players operation #Shield Temp /= @s HPMax

# シールドの表示を更新
    data modify storage player: attribute.ID set value max_absorption
    execute store result storage player: attribute.value int 1 run scoreboard players operation #Shield Temp < #20 Const
    function player:attribute/set with storage player: attribute
    effect give @s absorption infinite 4 true
    attribute @s max_absorption modifier remove minecraft:effect.absorption

# リセット
    scoreboard players reset #Shield Temp
    data remove storage player: attribute
