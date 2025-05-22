#> player:attribute/level/up
# プレイヤーがレベルアップした時に実行するコマンド

# 獲得した経験値が必要な経験値を下回るまでレベルアップ
    function player:attribute/level/calc_xp

# ステータスを更新
    function common:effect/get/id
    function player:attribute/update

# レベルアップ時の演出
    tellraw @s [{"text":"レベルが","color":"green"},{"score":{"name":"@s","objective":"Level"},"color":"green"},{"text":"に上がった！","color":"green"}]
    playsound entity.player.levelup player @s ~ ~ ~ 1 1
