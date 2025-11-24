#> asset:mob/creeper/init
# クリーパーの初期化をするコマンド

# クリーパーの基礎ステータスを設定
    function asset:mob/creeper/set_attribute

# モブ共通の初期化処理
    function mob:init

# クリーパーのレベルとHPバーの表示を初期化
    tag @s add vehicle
    execute summon text_display run function mob:attribute/level/display
    execute summon text_display run function mob:attribute/hp/init

# レベルの表示位置をずらす
    execute on passengers run data modify entity @s[tag=LevelDisplay] transformation.translation[1] set value 0.2f

# タグ削除
    tag @s remove vehicle
