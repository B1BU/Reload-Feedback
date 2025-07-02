scoreboard objectives add reload_feedback dummy
execute store result score command_feedback reload_feedback run gamerule sendCommandFeedback
execute if score command_feedback reload_feedback matches 1 run tellraw @a "Reloaded!"
scoreboard objectives remove reload_feedback