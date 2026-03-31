#> asset:mob/spider/init
# クモの初期化をするコマンド

# クモの基礎ステータスを設定
    function asset:mob/spider/attribute/set

# モブ共通の初期化処理
    function mob:init

# クモのステータス表示を初期化
    tag @s add vehicle
    execute summon text_display run function mob:display/attribute/xp/level/init
    execute summon text_display run function mob:display/attribute/hp/init
    execute summon text_display run function mob:display/attribute/shield/init
    execute summon text_display run function mob:display/attribute/healing_curse/init

# レベルの表示位置をずらす
    execute on passengers run data modify entity @s[tag=LevelDisplay] transformation.translation[1] set value 0.2f

# タグ削除
    tag @s remove vehicle
