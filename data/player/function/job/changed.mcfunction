#> player:job/changed
# プレイヤーが職業を変更した時に実行するコマンド

# 職業ごとに異なる基礎ステータスを設定
    execute if entity @s[team=] run function player:job/none/attribute

# レベルをもとに計算
    function common:init/attribute
