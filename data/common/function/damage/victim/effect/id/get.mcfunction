#> common:damage/victim/effect/id/get
# 攻撃されたエンティティのIDを取得するコマンド

# 攻撃されたエンティティのIDを取得
    execute store result storage common: VictimID.value int 1 run scoreboard players get @s EntityID

# 攻撃された時に発動するエフェクトを取得
    function common:damage/victim/effect/get with storage common: VictimID

# タグ削除
    tag @s remove victim
