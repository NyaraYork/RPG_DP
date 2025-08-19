#> common:effect/target/remove
# 更新前の付与対象リストからIDを削除するコマンド

# 更新前と更新後のリストで重複しないIDを格納
    function common:effect/target/store with storage common: TargetIDPrev[-1]

# 更新前の付与対象リストから最後尾のデータを削除
    data remove storage common: TargetIDPrev[-1]

# 更新前の付与対象リストからデータがなくなるまで再帰
    execute if data storage common: TargetIDPrev[] run function common:effect/target/remove
