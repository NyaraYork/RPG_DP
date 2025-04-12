#> player:tick
# プレイヤーに毎ティック実行するコマンド
    #declare score_holder #SelectedSlotCurr

# プレイヤーが初めてワールドに入った時実行
    execute unless score @s EntityID matches -2147483648..2147483647 run function player:init

# プレイヤーの選択しているスロットが変わったらステータス更新
    execute store result score #SelectedSlotCurr Temp run data get entity @s SelectedItemSlot
    execute unless score #SelectedSlotCurr Temp = @s SelectedSlotPrev run function player:trigger/inventory/selected_slot/changed

# プレイヤーの最大HPをHPバーに反映
    execute if score @s SetMaxHPDelay matches 0 run function player:attribute/hp/max
    scoreboard players remove @s[scores={SetMaxHPDelay=1..}] SetMaxHPDelay 1

# スコアリセット
    scoreboard players reset #SelectedSlotCurr Temp
