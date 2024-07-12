query 50120 "Person who paid fine"
{
    QueryType = Normal;
    
    elements
    {
        dataitem(Lending; Lending)
        {
            DataItemTableFilter = "Fine Amount" =filter(>0);

            column(Lending_ID;"Lending ID")
            {
                Caption = 'Lending ID';
            }
            column(Customer_Name;"Customer Name")
            {
                Caption = 'Customer Name';
            }
            column(Fine_Amount;"Fine Amount")
            {
                Caption = 'Fine Amount';
            }
            column(Book_ID;"Book ID")
            {
                Caption = 'Book ID';
            }
            column(Lending_Date;"Lending Date")
            {
               Caption = 'Lending Date' ;
            }
        }
    }
}