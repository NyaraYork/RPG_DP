#> player:trigger/attacked/melee
# プレイヤーが近接攻撃をしたときに実行するコマンド

# 攻撃したエンティティにタグを付与
    tag @s add attacker

# 近接攻撃されたエンティティにタグを付与
    function player:attack/melee/tag/add

# 攻撃のチャージ率に応じてダメージ倍率を設定
    function player:attack/melee/set_multiplier

# 攻撃したエンティティのIDを取得
    function common:damage/attacker/effect/id/get

# リセット
    tag @s remove attacker
    scoreboard players reset #DMGMultiplier Temp
