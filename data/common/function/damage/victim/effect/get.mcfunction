#> common:damage/victim/effect/get
# 攻撃された時に発動するエフェクトを取得するコマンド

# 攻撃された時に発動するエフェクトを取得
    $data modify storage common: EffectsBuf prepend from storage common: effects[{owner:$(value),trigger:"hurt"}]
    $data remove storage common: effects[{owner:$(value),trigger:"hurt"}]

# エフェクトを適用
    function common:damage/victim/effect/apply

# ステータスを更新
    function common:effect/target/attribute/get with storage common: UpdatedEntities[-1]

# ダメージ計算
    function common:damage/attacker/element/get with storage common: AttackerID
    execute as @n[tag=attacker] run function common:damage/attacker/calc with storage common: damage
    function common:damage/victim/calc with storage common: damage

# ノックバック量の計算
    scoreboard players set #MotionMagnitude Temp 100
    scoreboard players operation #MotionMagnitude Temp -= @s KnockbackRES
    scoreboard players operation #MotionMagnitude Temp *= @n[tag=attacker] KnockbackStrength
    scoreboard players operation #MotionMagnitude Temp /= #100 Const

# 攻撃したプレイヤーにタグを付与
    $tag @p[tag=attacker] add attacked_$(value)

# ダメージを与える
    function common:damage/deal

# ノックバック
    execute if score @s HP matches 1.. run function lib:motion/set

# エフェクトの付与対象を削除
    $data modify storage common: UpdatedEntities prepend from storage common: effects[{owner:$(value),trigger:"hurt"}].target.ID[]
    $data remove storage common: effects[{owner:$(value),trigger:"hurt"}].target.ID
