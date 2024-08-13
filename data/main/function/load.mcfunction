#> main:load
# ロード時実行されるコマンド
    #declare storage main:load

# ロード時一度だけ実行する
    execute unless data storage main:load {init:true} run function main:load_once

# 実行記録を残す(リリース時のみtrueに)
    data modify storage main:load init set value false
