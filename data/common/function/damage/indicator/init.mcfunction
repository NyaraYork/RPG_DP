#> common:damage/indicator/init
# ダメージ表示エンティティの初期化をするコマンド

# ダメージ表示エンティティの初期化
    scoreboard players set @s DisplayTicks 5
    data merge entity @s {background:0,billboard:"center",brightness:{block:15,sky:0},see_through:true,Tags:["damage_indicator"],teleport_duration:1,text:{color:"white",score:{name:"#Damage",objective:"Temp"}}}

# 会心が発生した場合ダメージの表示を大きくする
    execute if score #CritDMG Temp matches 1001.. run data modify entity @s transformation.scale[] set value 2.0f

# 受けたダメージの属性に応じて色を変える
    execute if data storage common: damage{element:"Fire"} run return run data modify entity @s text.color set value "red"
    execute if data storage common: damage{element:"Water"} run return run data modify entity @s text.color set value "blue"
    execute if data storage common: damage{element:"Thunder"} run return run data modify entity @s text.color set value "yellow"
    execute if data storage common: damage{element:"Ground"} run return run data modify entity @s text.color set value "gold"
    execute if data storage common: damage{element:"Wind"} run return run data modify entity @s text.color set value "dark_green"
    execute if data storage common: damage{element:"Ice"} run return run data modify entity @s text.color set value "aqua"
    execute if data storage common: damage{element:"Dark"} run return run data modify entity @s text.color set value "dark_purple"
    execute if data storage common: damage{element:"Light"} run data modify entity @s text.color set value "#ffffe0"
