#> asset:effect/shield/absorb
# ダメージを吸収するコマンド

# シールド耐久値を減らす
    $data modify storage asset: shield prepend from storage common: effects[{attribute:"Shield",target:{ID:[{value:$(value)}]}}]
    $data remove storage common: effects[{attribute:"Shield",target:{ID:[{value:$(value)}]}}]
    function asset:effect/shield/reduce

# シールドで軽減したダメージを与える
    function common:damage/deal

# ストレージ削除
    data remove storage asset: shield
