Begin Transaction                       --Telling sql what you want to lock into the database. Must "commit" after beginning transaction (Run Begin Transaction before making changes)

Delete Vendorscopy                    --Class lesson on ensuring the data you wanna change is the intended data, and getting data back if needed
    Where VendorID = 1                  --This delets the postal service out of the table because they are vendorid 1

Commit;                                 --Locked things into the database


Rollback;                               --Whatever you did will be reversed to how it was before you began the transaction

select top 10 *
    from vendorscopy