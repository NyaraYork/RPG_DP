#> common:attribute/modifier/effect/get
# 自身に付与されているエフェクトを取得するコマンド

# エフェクトを取得
    $data modify storage common: AttributeModifiers prepend from storage common: effects[{target:{ID:[{value:$(value)}]}}]
