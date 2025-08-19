#> common:effect/target/store
# 更新前と更新後のリストで重複しないIDを格納するコマンド

# 更新後の付与対象のリストに同じIDがある場合それを削除
    $execute if data storage common: TargetID[{value:$(value)}] run return run data remove storage common: TargetID[{value:$(value)}]

# 更新後の付与対象のリストに同じIDがない場合そのIDを更新後のリストに追加
    data modify storage common: TargetID prepend from storage common: TargetIDPrev[-1]
