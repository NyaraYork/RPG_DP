#> main:tick
# 毎ティック実行されるコマンド

# プレイヤー
    execute as @a run function player:tick

# スポナー
    execute as @e[type=marker,tag=spawner] at @s run function spawner:tick
