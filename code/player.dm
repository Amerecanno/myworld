    
/obj/spawn_point
    icon = 'icon/mob.dmi'
    icon_state = "spawn.point"
    density = 0


/mob/Login()
    . = ..()
    loc = locate(1,1,1)
    world << "Привет уебок [ckey]"


    var/obj/spawn_point/spawn_location = locate(15, 9, 1)  // Находим объект spawn_point
    if (spawn_location)  // Проверяем, найден ли объект
        src.loc = spawn_location   // Устанавливаем местоположение игрока в точку спауна
    else
        world << "Точка спауна не найдена, устанавливаем стартовую позицию."
        src.loc = locate(1, 1, 1)  // Устанавливаем координаты по умолчанию
    // var/obj/spawn_point/spawn = locate(15, 9, 1)  // Указываем точку на карте (например, координаты 1, 1, 1)
    //     var/x = spawn.x
    //     var/y = spawn.y
    //     var/z = spawn.z
    //     src.loc = locate(x, y, z)  // Спавним игрока в этой точке
/mob
    icon = 'icon/mob/SpecialFriend.dmi'
    icon_state = "0,1"
    Move()
        . = ..()
        if ( dir == NORTH)
            icon_state = "1,1"
        else if( dir == SOUTH)
            icon_state = "0,1"
        else if( dir == EAST)
            icon_state = "2,1"
        else if( dir == WEST)
            icon_state = "3,1"

