#> main:init
# ワールドの初期化をするコマンド

# 常時読み込まれるチャンクを設定
    execute in lib:debug run forceload add -1 -1 0 0

# ゲームルールの設定
    gamerule doMobSpawning false

# スコアボード作成
    scoreboard objectives add EntityID dummy

    scoreboard objectives add Level dummy
    scoreboard objectives add XP dummy
    scoreboard objectives add XPRequired dummy
    scoreboard objectives add HP dummy
    scoreboard objectives add HPMax dummy
    scoreboard objectives add ATK dummy
    scoreboard objectives add DEF dummy
    scoreboard objectives add SPD dummy
    scoreboard objectives add CritRate dummy
    scoreboard objectives add CritDMG dummy

    scoreboard objectives add PhysicalDMGBonus dummy
    scoreboard objectives add FireDMGBonus dummy
    scoreboard objectives add WaterDMGBonus dummy
    scoreboard objectives add ThunderDMGBonus dummy
    scoreboard objectives add GroundDMGBonus dummy
    scoreboard objectives add WindDMGBonus dummy
    scoreboard objectives add IceDMGBonus dummy
    scoreboard objectives add DarkDMGBonus dummy
    scoreboard objectives add LightDMGBonus dummy

    scoreboard objectives add PhysicalRES dummy
    scoreboard objectives add FireRES dummy
    scoreboard objectives add WaterRES dummy
    scoreboard objectives add ThunderRES dummy
    scoreboard objectives add GroundRES dummy
    scoreboard objectives add WindRES dummy
    scoreboard objectives add IceRES dummy
    scoreboard objectives add DarkRES dummy
    scoreboard objectives add LightRES dummy

    scoreboard objectives add SelectedSlotPrev dummy
    scoreboard objectives add SetMaxHPDelay dummy

    scoreboard objectives add Temp dummy
    scoreboard objectives add Global dummy
    scoreboard objectives add Const dummy

# 定数を定義
    scoreboard players set #2 Const 2
    scoreboard players set #10 Const 10
    scoreboard players set #1000 Const 1000
    scoreboard players set #10000 Const 10000
    scoreboard players set #-2147483648 Const -2147483648

# ワールドの初期化が完了したか否かを決定
    return 0
