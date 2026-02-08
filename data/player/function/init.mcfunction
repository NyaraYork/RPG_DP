#> player:init
# プレイヤーの初期化をするコマンド

# プレイヤーにIDを付与する
    execute store result score @s EntityID run function common:id/get

# プレイヤーにレベルと必要な経験値を設定する
    function player:attribute/xp/calc

# プレイヤーのステータスを設定する
    function player:job/none/set_attribute
    function common:attribute/calc

# プレイヤーのHPをHPバーに反映
    scoreboard players operation @s HP = @s HPMax
    function player:attribute/hp/value
