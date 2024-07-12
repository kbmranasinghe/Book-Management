page 50123 "Book List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Book;
    Caption = 'Bonus List';
    CardPageId = "Book Card";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(controll)
            {
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    TableRelation = Book."Book ID";
                    DrillDownPageId = 50122;
                }
                field("Title"; Rec.Title)
                {
                    ApplicationArea = All;
                }
                field("Author"; Rec.Author)
                {
                    ApplicationArea = All;
                }
                field("Book Price"; Rec."Book Price")
                {
                    ApplicationArea = All;
                }
                field("Publication Date"; Rec."Publication Date")
                {
                    ApplicationArea = All;
                }
                field("Language"; Rec.Language)
                {
                    ApplicationArea = All;
                }
                field("Book Category"; Rec."Book Category")
                {
                    ApplicationArea = All;
                }
                field(Publisher; Rec.Publisher)
                {
                    ApplicationArea = All;
                }
                field("ISBN Number"; Rec."ISBN Number")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    // var
    //     myInt: Integer;
}