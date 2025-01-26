# 抛硬币游戏

## TABLE

- 预先在桌面的不同位置生成marker，maker的table_coin_index计分项记录位置
- index 0～99
    - 桌面硬币摆放位置
- index 100
    - 关卡目标：抛出硬币
- index 101
    - 关卡目标：基础目标
- index 102
    - 关卡目标：额外目标
- index 103
    - 教程提示
- index 200
    - 【开始游戏】按钮
- index 201
    - 【继续>>】按钮
    - 【下一关>>】按钮

## storage

- ps:ani 动画相关
- ct:table 桌面的硬币
    - coin_list[] 硬币队列
        - {}
            - coin_id:x
            - ishead:0/1
            - 
    - gened_coin[] 待收集的硬币id