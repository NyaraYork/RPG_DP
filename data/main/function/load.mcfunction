#> main:load
# ワールド読み込み時に実行するコマンド
    #declare storage main:

# ワールドの初期化
    execute unless data storage main: {loaded:true} store result storage main: loaded byte 1 run function main:init
