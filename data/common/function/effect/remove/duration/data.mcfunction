#> common:effect/remove/duration/data
# durationが0のエフェクトのデータを削除するコマンド

# durationが0のエフェクトのデータを削除
    data remove storage common: data[-1].effects[{duration:0}]

# エンティティのステータスを更新
    function common:effect/remove/attribute/get
