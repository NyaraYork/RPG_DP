#> player:trigger/changed/selected_slot
# プレイヤーの選択しているスロットが変更されたときに実行するコマンド

# ステータス更新
    function player:effect/inventory/get

# 前に選択していたスロットを現在の数値にする
    scoreboard players operation @s SelectedSlotPrev = #SelectedSlotCurr Temp
