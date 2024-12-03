
/mob/verb/hello()
    set name = "Привет"
    set category = "Emote"
    var/ckey = input("Когому привет сказать?")
    if (!ckey || ckey == "")
        world << "Привет!"
    else
        world << "Сказал привет,[ckey]!"

/mob/verb/Who()
    set name ="Who"
    set category = "OOC"
    