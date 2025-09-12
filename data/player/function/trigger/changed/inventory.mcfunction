#> player:trigger/changed/inventory
# プレイヤーのインベントリが更新されたときに実行するコマンド

# ステータス更新
    function player:effect/inventory/get

# 進捗リセット
    advancement revoke @s only player:trigger/changed/inventory
