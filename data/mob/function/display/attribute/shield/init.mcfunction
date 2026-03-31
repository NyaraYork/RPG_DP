#> mob:display/attribute/shield/init
# モブのシールド表示を初期化するコマンド

# シールド表示をモブの頭上に乗せる
    ride @s mount @n[tag=vehicle]

# シールドの表示に必要なデータを設定
    data merge entity @s {background:0,billboard:"center",brightness:{block:15,sky:0},Tags:["shield"]}
