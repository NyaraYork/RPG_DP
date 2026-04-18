#> player:tick
# プレイヤーに毎ティック実行するコマンド

# プレイヤーが初めてワールドに入った時実行
    execute unless score @s EntityID matches -2147483648..2147483647 run function player:init

# プレイヤーの選択しているスロットが変わったらステータス更新
    execute store result score #SelectedSlotCurr Temp run data get entity @s SelectedItemSlot
    execute unless score #SelectedSlotCurr Temp = @s SelectedSlotPrev run function player:trigger/changed/selected_slot

# 表示するエフェクトを取得
    execute store result storage player: ID.value int 1 run scoreboard players get @s EntityID
    function player:display/effect/get with storage player: ID

# HP表示に必要なデータを設定
    data modify storage player: hp set value ["",{text:"\uE000",font:"player:display/attribute/hp",shadow_color:0},{text:"\uE010\uE008\uE002\uE001",font:"lib:space"},{score:{name:"*",objective:"HP"},font:"player:display/attribute/negative_space"},{score:{name:"*",objective:"HP"},font:"player:display/attribute/hp"},{text:"\uE008\uE004",font:"lib:space"}]

# シールド耐久値の表示に必要なデータを設定
    execute if score @s Shield matches 1.. run data modify storage player: shield set value [{text:"\uE001",font:"lib:space"},{text:"\uE000",font:"player:display/attribute/shield",shadow_color:0},{text:"\uE010\uE008\uE002\uE001",font:"lib:space"},{score:{name:"*",objective:"Shield"},font:"player:display/attribute/negative_space"},{score:{name:"*",objective:"Shield"},font:"player:display/attribute/shield"},{text:"\uF020\uF004\uF001",font:"lib:space"}]

# 回復の呪いの残量表示に必要なデータを設定
    scoreboard players set #HealingCurse Temp 10
    scoreboard players operation #HealingCurse Temp *= @s HealingCurse
    scoreboard players operation #HealingCurse Temp /= @s HPMax
    scoreboard players operation #HealingCurse Temp < #10 Const
    function player:display/attribute/healing_curse/bar/add

# ステータス表示
    title @s actionbar ["",{text:"\uF080",font:"lib:space"},{interpret:true,nbt:"shield[]",storage:"player:",separator:""},{interpret:true,nbt:"hp[]",storage:"player:",separator:""},{plain:true,shadow_color:0,font:"player:display/attribute/healing_curse",nbt:"HealingCurse[]",storage:"player:",separator:{text:"\uF002",font:"lib:space"}},{text:"\uE008\uE001",font:"lib:space"},{interpret:true,nbt:"NegativeSpace[]",storage:"player:",separator:""},{interpret:true,shadow_color:0,nbt:"DisplayEffects[]",storage:"player:",separator:""},{interpret:true,nbt:"NegativeSpace[]",storage:"player:",separator:""},{text:"\uE008\uE004",font:"lib:space"}]

# ダメージ耐性付与
    effect give @s resistance 1 255 true

# リセット
    data remove storage player: ID
    data remove storage player: DisplayEffects
    data remove storage player: NegativeSpace
    data remove storage player: hp
    data remove storage player: shield
    data remove storage player: HealingCurse
    scoreboard players reset #SelectedSlotCurr Temp
    scoreboard players reset #HealingCurse Temp
    scoreboard players reset #Count Temp
