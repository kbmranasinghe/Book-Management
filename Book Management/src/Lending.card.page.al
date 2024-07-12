page 50121 LendingCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Lending;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Lending ID"; rEC."Lending ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    TableRelation = Book."Book ID";

                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;

                }
                field("Lending Date"; Rec."Lending Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        if rec."Lending Date" <> Today() then
                            Error('Invalid Lending Date, Must be today');
                        Rec."Due Date" := Rec."Lending Date" + 30;
                    end;

                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    Editable = false;

                }
                field("Return Date"; Rec."Return Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    trigger OnValidate()

                    begin
                        if rec."Return Date" <> 0D then begin  // 0D = zero Date
                            if rec."Return Date" > rec."Due Date" then
                                Rec."Fine Amount" := 100
                            else
                                Rec."Fine Amount" := 0
                        end;
                    end;

                }
                field("Fine Amount"; Rec."Fine Amount")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    Editable = false;

                }
                field("Status"; Rec.Status)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
            }
        }
    }
}