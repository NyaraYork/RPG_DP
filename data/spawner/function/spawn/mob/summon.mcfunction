#> spawner:spawn/mob/summon
# モブを召喚するコマンド

# モブを召喚
    execute if data storage spawner: {data:{SpawnData:{ID:"zombie"}}} run return run summon zombie
    execute if data storage spawner: {data:{SpawnData:{ID:"skeleton"}}} run return run summon skeleton
    execute if data storage spawner: {data:{SpawnData:{ID:"creeper"}}} run return run summon creeper
    execute if data storage spawner: {data:{SpawnData:{ID:"spider"}}} run return run summon spider
