#> player:init
# プレイヤーが初めてワールドに入った時に実行されるコマンド
    
# プレイヤーにIDとそのビットタグを付与する
    function common:init/id/bit

# プレイヤーにレベルとステータスを設定する
    function player:attribute/level/calc
    tag @s add None
    function player:job/changed
