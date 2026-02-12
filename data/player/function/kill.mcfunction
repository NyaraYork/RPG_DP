#> player:kill
# プレイヤーのキル処理をするコマンド

# キル
    kill @s

# HP全快
    scoreboard players operation @s HP = @s HPMax

# 2ティック後にダメージ耐性を再付与
    data modify storage common: EffectsBuf set value [{type:"resistance",stack:1,name:"ApplyResistance",duration:2,trigger:"tick",target:{predicate:{type:"owner"}}}]
    function common:effect/owner/add
