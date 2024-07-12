/// <summary>
/// Table Lending (ID 50101).
/// </summary>
table 50121 Lending
{
    Caption = 'Lending';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Lending ID"; Code[20])
        {
            Caption = 'Lending ID';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Book ID"; Code[20])
        {
            Caption = 'Book ID';
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = Book."Book ID";
        }
        field(3; "Lending Date"; Date)
        {
            Caption = 'Lending Date';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(4; "Return Date"; Date)
        {
            Caption = 'Return Date';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(5; "Status"; Option)
        {
            Caption = 'Status';
            OptionMembers = Issued,Returned,Overdue;
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(6; "Customer Name"; Text[20])
        {
            Caption = 'Customer Name';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(7; "Due Date"; Date)
        {
            Caption = 'Due Date';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(8; "Fine Amount"; Decimal)
        {
            Caption = 'Fine Aomunt';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(pk; "Lending ID")
        {
            Clustered = true;
        }
        key(Book; "Book ID")
        {
            Clustered = false;
        }
    }
}