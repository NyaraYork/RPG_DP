#> main:tick
# 毎ティック実行するコマンド

# 経験値オーブをキル
    kill @e[type=experience_orb]

# エフェクト
    function common:effect/tick

# インジケーター
    execute as @e[type=text_display,tag=indicator] at @s run function indicator:tick

# プレイヤー
    execute as @a run function player:tick

# スポナー
    execute as @e[type=marker,tag=spawner] at @s run function spawner:tick
