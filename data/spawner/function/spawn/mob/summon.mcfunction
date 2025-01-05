#> spawner:spawn/mob/summon
# モブを召喚するコマンド

# モブを召喚
    execute if data storage spawner: {data:{SpawnData:{ID:"zombie"}}} summon zombie run return run function mob:zombie/init
    execute if data storage spawner: {data:{SpawnData:{ID:"skeleton"}}} summon skeleton run return run function mob:skeleton/init
    execute if data storage spawner: {data:{SpawnData:{ID:"creeper"}}} summon creeper run return run function mob:creeper/init
    execute if data storage spawner: {data:{SpawnData:{ID:"spider"}}} summon spider run return run function mob:spider/init
