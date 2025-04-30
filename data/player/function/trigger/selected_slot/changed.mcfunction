#> player:trigger/selected_slot/changed
# プレイヤーの選択しているスロットが変更されたときに実行するコマンド

# ステータス更新
    function player:attribute/update

# 前に選択していたスロットを現在の数値にする
    scoreboard players operation @s SelectedSlotPrev = #SelectedSlotCurr Temp
