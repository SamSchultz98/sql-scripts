/* This is the way to create an index
The benefit is that the reading of the row is faster compared to having no index
    --When you dont have an index, it has to search the entire table to get the info you're looking for
        --The index tells the program what column our data is in, and then brings back the rest of the info based off of the identifer
Updating that column will take more time because of the index
*/

create index IDX_FirstName
    on students (Firstname)