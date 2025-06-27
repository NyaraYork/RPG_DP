#> asset:mob/creeper/set_attribute
# クリーパーのステータスを設定するコマンド

# クリーパーの基礎ステータスを設定
    scoreboard players set @s HPMax 29
    scoreboard players set @s ATK 23
    scoreboard players set @s DEF 23

# ステータス補正値を適用
    function common:attribute/calc
