#> player:init
# プレイヤーが初めてワールドに入った時に実行されるコマンド
    
# プレイヤーにIDとそのビットタグを付与する
    function common:init/id

# プレイヤーにレベルとステータスを設定する
    function player:attribute/level/calc
    function player:attribute/update
