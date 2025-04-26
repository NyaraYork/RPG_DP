#> spawner:spawn/potential/requirement/weather
# 天候を条件に召喚するモブを絞り込むコマンド

# 天候を条件に召喚するモブを絞り込む
    execute if predicate lib:weather_check/clear run data modify storage spawner: data.SpawnPotentialsBuf prepend from storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["clear"]}}]
    execute if predicate lib:weather_check/rain run data modify storage spawner: data.SpawnPotentialsBuf prepend from storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["rain"]}}]
    execute if predicate lib:weather_check/thunder run data modify storage spawner: data.SpawnPotentialsBuf prepend from storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["thunder"]}}]
    data remove storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["clear"]}}]
    data remove storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["rain"]}}]
    data remove storage spawner: data.SpawnPotentials[{Requirements:{SpawnableWeather:["thunder"]}}]

# 天候による条件の指定がないモブはそのまま追加
    data modify storage spawner: data.SpawnPotentialsBuf prepend from storage spawner: data.SpawnPotentials[]
    data remove storage spawner: data.SpawnPotentials[]

# その他の値の条件をもとに召喚するモブを絞り込む
    function spawner:spawn/potential/requirement/value
