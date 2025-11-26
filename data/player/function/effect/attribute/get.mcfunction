#> player:effect/attribute/get
# プレイヤーのステータスエフェクトを取得するコマンド

# エフェクト取得
    $data modify storage common: AttributeModifiers prepend from storage common: effects[{target:{ID:[{value:$(value)}]}}]
