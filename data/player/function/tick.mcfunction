#> player:tick
# プレイヤーに毎ティック実行するコマンド

# プレイヤーが初めてワールドに入った時実行
    execute unless score @s EntityID matches -2147483648..2147483647 run function player:init

# プレイヤーの選択しているスロットが変わったらステータス更新
    execute store result score #SelectedSlotCurr Temp run data get entity @s SelectedItemSlot
    execute unless score #SelectedSlotCurr Temp = @s SelectedSlotPrev run function player:trigger/changed/selected_slot

# ダメージ耐性付与
    effect give @s resistance 1 255 true

# スコアリセット
    scoreboard players reset #SelectedSlotCurr Temp
