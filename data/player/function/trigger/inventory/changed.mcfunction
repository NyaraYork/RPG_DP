#> player:trigger/inventory/changed
# プレイヤーのインベントリが更新されたときに実行するコマンド

# ステータス更新
    function common:effect/get/id
    function player:attribute/update

# 進捗リセット
    advancement revoke @s only player:inventory_changed
