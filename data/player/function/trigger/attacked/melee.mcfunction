#> player:trigger/attacked/melee
# プレイヤーが近接攻撃をしたときに実行するコマンド

# 自身(攻撃したエンティティ)にタグを付与
    tag @s add attacker

# 近接攻撃されたエンティティにタグを付与
    function player:attack/melee/add_tag

# 
    function common:attack/attacker/id/get

# リセット
    advancement revoke @s only player:trigger/attacked/melee
    tag @s remove attacker
