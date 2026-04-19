#> asset:effect/regeneration/apply
# HPを持続的に回復するコマンド

# Durationが0になったら回復
    function common:effect/interval/calc
    execute if score #Duration Temp matches 0 run function asset:effect/regeneration/heal
