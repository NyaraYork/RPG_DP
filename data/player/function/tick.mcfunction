#> player:tick
# プレイヤーに毎ティック実行するコマンド

# プレイヤーが初めてワールドに入った時実行
    execute unless score @s EntityID matches -2147483648..2147483647 run function player:init

# プレイヤーの選択しているスロットが変わったらステータス更新
    execute store result score #SelectedSlotCurr Temp run data get entity @s SelectedItemSlot
    execute unless score #SelectedSlotCurr Temp = @s SelectedSlotPrev run function player:trigger/changed/selected_slot

# ExecutionDelayが0になったら実行
    scoreboard players remove @s[scores={ExecutionDelay=1..}] ExecutionDelay 1
    execute if entity @s[tag=RestoreHP,scores={ExecutionDelay=0}] run function player:attribute/hp_bar/restore
    execute if entity @s[tag=ApplyResistance,scores={ExecutionDelay=0}] run function player:effect/resistance/apply

# スコアリセット
    scoreboard players reset #SelectedSlotCurr Temp
    scoreboard players reset @s[scores={ExecutionDelay=0}] ExecutionDelay
