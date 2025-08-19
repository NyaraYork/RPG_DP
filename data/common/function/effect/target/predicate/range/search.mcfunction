#> common:effect/target/predicate/range/search
# エフェクトの付与対象を範囲で絞り込むコマンド

# エフェクトの付与対象を範囲で絞る
    $execute if entity @s[distance=..$(range)] run function common:effect/target/predicate/player/search
