policy "opening-hours" {
    source = "./opening-hours.sentinel"
    enforcement_level = "hard-mandatory"
    params = {
        "day" = "Monday"
        "hour" = 10
    }
}

policy "weeked" {
    source = "./weekend.sentinel"
    enforcement_level = "advisory"
}

// これで全てのポリシーでtimeをimportしなくてもよい
global "time" {
    value = {
        now = {
            day = 31
        }
    }
}

