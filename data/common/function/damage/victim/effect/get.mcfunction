#> common:damage/victim/effect/get
# 攻撃された時に発動するエフェクトを取得するコマンド

# 攻撃された時に発動するエフェクトを取得
    $data modify storage common: EffectsBuf prepend from storage common: effects[{owner:$(value),trigger:"hurt"}]
    $data remove storage common: effects[{owner:$(value),trigger:"hurt"}]

# エフェクトを適用
    function common:damage/victim/effect/apply

# ステータスを更新しダメージ計算
    function common:effect/target/attribute/get with storage common: UpdatedEntities[-1]
    execute as @n[tag=attacker] run function common:damage/attacker/element/id/get
    function common:damage/victim/calc with storage common: damage

# ダメージを与える
    function common:damage/deal

# エフェクトの付与対象を削除
    $data modify storage common: UpdatedEntities prepend from storage common: effects[{owner:$(value),trigger:"hurt"}].target.ID[]
    $data remove storage common: effects[{owner:$(value),trigger:"hurt"}].target.ID
