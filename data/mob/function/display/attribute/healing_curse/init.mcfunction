#> mob:display/attribute/healing_curse/init
# モブの回復の呪いの残量表示を初期化するコマンド

# 回復の呪いの残量表示をモブの頭上に乗せる
    ride @s mount @n[tag=vehicle]

# 回復の呪いの残量表示に必要なデータを設定
    data merge entity @s {background:0,billboard:"center",brightness:{block:15,sky:0},Tags:["HealingCurse"]}
