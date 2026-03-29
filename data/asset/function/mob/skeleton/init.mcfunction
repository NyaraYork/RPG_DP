#> asset:mob/skeleton/init
# スケルトンの初期化をするコマンド

# スケルトンの基礎ステータスを設定
    function asset:mob/skeleton/attribute/set

# モブ共通の初期化処理
    function mob:init

# スケルトンのレベルとHPバーの表示を初期化
    tag @s add vehicle
    execute summon text_display run function mob:display/attribute/xp/level/init
    execute summon text_display run function mob:display/attribute/hp/init

# レベルの表示位置をずらす
    execute on passengers run data modify entity @s[tag=LevelDisplay] transformation.translation[1] set value 0.2f

# タグ削除
    tag @s remove vehicle
