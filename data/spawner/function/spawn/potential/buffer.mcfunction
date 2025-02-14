#> spawner:spawn/potential/buffer
# 召喚するモブの要素を仮のNBTに保存するコマンド

# 天候を条件に召喚するモブを絞り込んで保存
    execute if predicate spawner:weather_check/clear run data modify storage spawner: data.SpawnPotentialsBuf prepend from storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["clear"]}}]
    execute if predicate spawner:weather_check/rain run data modify storage spawner: data.SpawnPotentialsBuf prepend from storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["rain"]}}]
    execute if predicate spawner:weather_check/thunder run data modify storage spawner: data.SpawnPotentialsBuf prepend from storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["thunder"]}}]
    data remove storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["clear"]}}]
    data remove storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["rain"]}}]
    data remove storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["thunder"]}}]

# 天候による条件の指定がないモブはそのまま保存
    data modify storage spawner: data.SpawnPotentialsBuf prepend from storage spawner: data.SpawnPotentials[]
    data remove storage spawner: data.SpawnPotentials

# その他の条件をもとに召喚するモブを取得
    function spawner:spawn/potential/get
