#> player:trigger/changed/inventory
# プレイヤーのインベントリが更新されたときに実行するコマンド

# ステータス更新
    function common:attribute/modifier/effect/id/get
    function player:attribute/update

# 進捗リセット
    advancement revoke @s only player:trigger/changed/inventory
