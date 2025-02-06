#> main:load
# ロード時実行されるコマンド
    #declare storage main:

# ロード時一度だけ実行する
    execute unless data storage main: {loaded:true} store result storage main: loaded byte 1 run function main:init
