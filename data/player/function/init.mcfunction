#> player:init
# プレイヤーが初めてワールドに入った時に実行されるコマンド
    
# プレイヤーにIDとそのビットタグを付与する
    function common:id/init

# プレイヤーにレベルと必要な経験値を設定する
    function player:attribute/level/calc

# プレイヤーのステータスを設定する
    function player:job/none/init
    function common:init/attribute

# プレイヤーのHPをHPバーに反映
    scoreboard players operation @s HP = @s HPMax
    function player:attribute/hp/value
