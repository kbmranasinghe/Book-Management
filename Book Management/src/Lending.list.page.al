page 50124 LendingList
{
    PageType = List;
    // ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Lending;
    Editable = false;
    Caption = 'Lending List';

    layout
    {
        area(Content)
        {
            repeater(controll)
            {
                field("Lending ID"; Rec."Lending ID")
                {
                    ApplicationArea = All;
                    TableRelation = Lending."Lending ID";
                    DrillDownPageId = 50121;
                }
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                }
                field("Lending Date"; Rec."Lending Date")
                {
                    ApplicationArea = All;
                }
                field("Return Date"; Rec."Return Date")
                {
                    ApplicationArea = All;
                }
                field("Status"; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field("Fine Amount"; Rec."Fine Amount")
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