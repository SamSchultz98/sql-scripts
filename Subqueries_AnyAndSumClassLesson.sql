select *
    from
    where col in (1, 2, 3, 4, 5)            --the col column has one of those values in it


    where col = SOME(1,2,3,4)               --Where this col is equal to at least some of these numbers

    where col = any(1,2,3,4)                --Where this col has any of these values in it
