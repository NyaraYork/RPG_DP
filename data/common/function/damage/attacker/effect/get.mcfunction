#> common:damage/attacker/effect/get
# 攻撃した時に発動するエフェクトを取得するコマンド

# 攻撃した時に発動するエフェクトを取得
    $data modify storage common: EffectsBuf prepend from storage common: effects[{owner:$(value),trigger:"attacked"}]
    $data remove storage common: effects[{owner:$(value),trigger:"attacked"}]

# エフェクトを適用
    function common:damage/attacker/effect/apply

# 攻撃されたエンティティのIDを取得
    execute as @e[tag=victim] positioned as @s run function common:damage/victim/effect/id/get

# エフェクトの付与対象を削除しステータスを元に戻す
    $data modify storage common: UpdatedEntities prepend from storage common: effects[{owner:$(value),trigger:"attacked"}].target.ID[]
    $data remove storage common: effects[{owner:$(value),trigger:"attacked"}].target.ID
    function common:effect/target/attribute/get with storage common: UpdatedEntities[-1]

# リセット
    data remove storage common: EffectsBuf
    data remove storage common: damage
    scoreboard players reset #Damage Temp
    scoreboard players reset #DMGBonus Temp
    scoreboard players reset #CritDMG Temp
    scoreboard players reset #CritChance Temp
    scoreboard players reset #RES Temp
    scoreboard players reset #HPRatio Temp
