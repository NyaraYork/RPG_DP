#> player:attribute/update
# プレイヤーのステータスを更新するコマンド
    #declare score_holder #HPRatio

# HP割合を計算
    scoreboard players set #HPRatio Temp 10000
    scoreboard players operation #HPRatio Temp *= @s HP
    scoreboard players operation #HPRatio Temp /= @s HPMax

# 職業ごとに異なる基礎ステータスを設定
    execute if entity @s[team=] run function player:job/none/attribute

# レベルの数値で乗算
    function common:attribute

# HP割合をステータス更新後の現在HPに反映
    scoreboard players operation @s HP = @s HPMax
    scoreboard players operation @s HP *= #HPRatio Temp
    scoreboard players operation @s HP /= #10000 Const

# HPバーに反映
    function player:attribute/hp/value

# リセット
    scoreboard players reset #HPRatio Temp
