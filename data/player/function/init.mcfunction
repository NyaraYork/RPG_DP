#> player:init
# プレイヤーが初めてワールドに入った時に実行されるコマンド
    
# プレイヤーにIDを付与する
    execute store result score @s EntityID run function common:id/get

# プレイヤーにレベルと必要な経験値を設定する
    function player:attribute/level/calc

# プレイヤーのステータスを設定する
    function player:job/none/init
    function player:attribute/item

# プレイヤーのHPをHPバーに反映
    scoreboard players operation @s HP = @s HPMax
    function player:attribute/hp/value
