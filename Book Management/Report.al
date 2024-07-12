report 50120 "Customer who paid fine_Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(Lending; Lending)
        {
            column(Customer_Name; "Customer Name")
            {

            }
            column(Fine_Amount; "Fine Amount")
            {

            }
            column(Book_ID; "Book ID")
            {

            }
            column(Lending_Date; "Lending Date")
            {

            }
            column(Return_Date; "Return Date")
            {

            }
            column(Status; Status)
            {

            }
            column(Due_Date; "Due Date")
            {

            }
        }
    }

    requestpage
    {
        AboutTitle = 'Filter by Date';
        AboutText = 'Specify the data range for the report.';
        layout
        {
            area(Content)
            {
                group(FilterGroup)
                {
                    field(StartDate; startingDate)
                    {
                        ApplicationArea = All;

                    }
                    field(EndDate; EndDate)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }


        actions
        {
            area(processing)
            {
                action(GenerateReport)
                {
                    ApplicationArea = All;
                    caption = ' Generate Report';

                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = word;
            LayoutFile = 'MyReport.docx';
        }
    }

    var
        StartingDate: Date;
        EndDate: Date;
        LenderRec: Record Lending;

}