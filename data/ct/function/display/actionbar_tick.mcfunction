execute if score #player_life ct matches 3 run title @a actionbar [\
{"text": "当前轮：","color": "white","bold": false},\
{"score": {"name": "#current_round","objective": "ct"},"color": "#15fe8a","bold": true},\
{"text": " | ","color": "gray","bold": false},\
{"text": "💗 💗 💗","color": "red","bold": false},\
{"text": " | ","color": "gray","bold": false},\
{"text": "剩余投掷数：","color": "white","bold": false},\
{"score": {"name": "#toss_left","objective": "ct"},"color": "#3775fc","bold": true}\
]
execute if score #player_life ct matches 2 run title @a actionbar [\
{"text": "当前轮：","color": "white","bold": false},\
{"score": {"name": "#current_round","objective": "ct"},"color": "#15fe8a","bold": true},\
{"text": " | ","color": "gray","bold": false},\
{"text": "💗 💗 ","color": "red","bold": false},\
{"text": "💗","color": "dark_gray","bold": false},\
{"text": " | ","color": "gray","bold": false},\
{"text": "剩余投掷数：","color": "white","bold": false},\
{"score": {"name": "#toss_left","objective": "ct"},"color": "#3775fc","bold": true}\
]
execute if score #player_life ct matches 1 run title @a actionbar [\
{"text": "当前轮：","color": "white","bold": false},\
{"score": {"name": "#current_round","objective": "ct"},"color": "#15fe8a","bold": true},\
{"text": " | ","color": "gray","bold": false},\
{"text": "💗 ","color": "red","bold": false},\
{"text": "💗 💗","color": "dark_gray","bold": false},\
{"text": " | ","color": "gray","bold": false},\
{"text": "剩余投掷数：","color": "white","bold": false},\
{"score": {"name": "#toss_left","objective": "ct"},"color": "#3775fc","bold": true}\
]
execute if score #player_life ct matches 0 run title @a actionbar [\
{"text": "当前轮：","color": "white","bold": false},\
{"score": {"name": "#current_round","objective": "ct"},"color": "#15fe8a","bold": true},\
{"text": " | ","color": "gray","bold": false},\
{"text": "💗 💗 💗","color": "dark_gray","bold": false},\
{"text": " | ","color": "gray","bold": false},\
{"text": "剩余投掷数：","color": "white","bold": false},\
{"score": {"name": "#toss_left","objective": "ct"},"color": "#3775fc","bold": true}\
]