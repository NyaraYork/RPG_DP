#> mob:attribute/hp/init
# モブのHPバーを初期化するコマンド

# HPバーをモブの頭上に乗せる
    ride @s mount @n[tag=vehicle]

# HPバーの表示に必要なデータを設定
    data merge entity @s {background:0,billboard:"center",brightness:{block:15,sky:0},Tags:["HPBar"]}
