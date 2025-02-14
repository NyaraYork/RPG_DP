#> spawner:spawn/mob/summon
# モブを召喚するコマンド

# モブを召喚
    execute if data storage spawner: data.SpawnData{ID:"zombie"} summon zombie run return run function asset:zombie/init
    execute if data storage spawner: data.SpawnData{ID:"skeleton"} summon skeleton run return run function asset:skeleton/init
    execute if data storage spawner: data.SpawnData{ID:"creeper"} summon creeper run return run function asset:creeper/init
    execute if data storage spawner: data.SpawnData{ID:"spider"} summon spider run return run function asset:spider/init
