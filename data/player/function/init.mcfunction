#> player:init
# プレイヤーの初期化をするコマンド

# エンティティIDを付与
    execute store result score @s EntityID run function common:id/get

# オーナーIDを付与
    scoreboard players operation @s OwnerID = @s EntityID

# プレイヤーにレベルと必要な経験値を設定
    function player:attribute/xp/calc

# レベルの表示を初期化
    xp set @s 1 levels

# ステータスを設定
    function player:job/none/attribute/set
    function common:attribute/calc

# プレイヤーのHPをHPバーに反映
    scoreboard players operation @s HP = @s HPMax
    function player:attribute/hp/update

# ダメージ耐性とノックバック耐性を付与
    effect give @s minecraft:resistance infinite 255 true
    attribute @s minecraft:knockback_resistance base set 1.0
