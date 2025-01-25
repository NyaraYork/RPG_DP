#> mob:display/hp/init
# 敵モブのHPバーを初期化するコマンド
    #declare tag HPBar

# HPバーを敵モブの頭上に乗せる
    ride @s mount @n[tag=vehicle]

# HPバーの表示に必要なデータを設定
    data merge entity @s {Tags:["HPBar"],background:0,billboard:"center",brightness:{block:15,sky:0}}
