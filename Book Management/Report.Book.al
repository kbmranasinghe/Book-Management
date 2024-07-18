report 50100 "Book Report"
{
    Caption = 'Book Report';
    RDLCLayout = 'Book Report.RDL';
    DefaultLayout = RDLC;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(Book; Book)
        {
            column(BookID; "Book ID")
            {
            }
            column(Title; Title)
            {
            }
            column(Author; Author)
            {
            }
            column(BookPrice; "Book Price")
            {
            }
            column(BookCategory; "Book Category")
            {
            }
            column(Language; Language)
            {
            }
            column(ISBNNumber; "ISBN Number")
            {
            }
            column(Publisher; Publisher)
            {
            }
            column(PublicationDate; "Publication Date")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
