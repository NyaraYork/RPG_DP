#> indicator:healing/init
# 回復インジケーターを初期化するコマンド

# 回復インジケーターを初期化
    scoreboard players set @s DisplayTicks 5
    data merge entity @s {background:0,billboard:"center",brightness:{block:15,sky:0},see_through:true,Tags:["indicator"],teleport_duration:1,text:[{color:"green",text:"+"},{score:{name:"#HealingAmount",objective:"Temp"}}]}
