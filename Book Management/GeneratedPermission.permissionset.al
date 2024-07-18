permissionset 50100 GeneratedPermission
{
    Assignable = true;
    Permissions = tabledata Book=RIMD,
        tabledata Lending=RIMD,
        table Book=X,
        table Lending=X,
        codeunit BookISBNValidatioin=X,
        page BookCardPage=X,
        page BookListPage=X,
        page LendingCard=X,
        page LendingList=X;
}