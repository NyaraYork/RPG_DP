#> main:tick
# 毎ティック実行するコマンド

# エフェクト
    function common:effect/remove/duration/tick

# プレイヤー
    execute as @a run function player:tick

# スポナー
    execute as @e[type=marker,tag=spawner] at @s run function spawner:tick
