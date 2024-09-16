#> main:load
# ロード時実行されるコマンド
    #declare storage main:

# ロード時一度だけ実行する
    execute unless data storage main: {reloaded:true} run function main:init

# 実行記録を残す(リリース時のみtrueに)
    data modify storage main: reloaded set value false
