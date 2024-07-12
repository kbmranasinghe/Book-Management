page 50122 "Book Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;
    Caption = 'Book Card';
    Editable = true;

    layout
    {
        area(Content)
        {
            group("Book Details")
            {
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Book ID';

                }
                field("ISBN Number"; Rec."ISBN Number")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the ISBN Number';

                    trigger OnValidate()
                    var
                        ISBNValidation: Codeunit BookISBNValidatioin;
                    begin
                        if not ISBNValidation.ValidateISBNNumber(Rec."ISBN Number") then
                            Error('Invalid Number');
                    end;
                }
                field("Book Category"; Rec."Book Category")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Book Category';

                }
                field("Book Price"; Rec."Book Price")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Book Price';

                }
                field("Publisher"; Rec."Publisher")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Publisher';

                }
                field("Title"; Rec."Title")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Title';

                }
                field("Author"; Rec."Author")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Author';

                }
                field("Publication Date"; Rec."Publication Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Publication Date';

                }
                field("Language"; Rec.Language)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Language';
                }
            }
        }
    }

    //     actions
    //     {
    //         area(Processing)
    //         {
    //             action(ActionName)
    //             {
    //                 ApplicationArea = All;

    //                 trigger OnAction()
    //                 begin

    //                 end;
    //             }
    //         }
    //     }

    //     var
    //         myInt: Integer;
    //
}