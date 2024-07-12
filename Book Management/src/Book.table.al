/// <summary>
/// Table Book (ID 50100).
/// </summary>
table 50120 "Book"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Book ID"; Code[20])
        {
            Caption = 'Book ID';
            NotBlank = true;
            DataClassification = ToBeClassified;

        }
        field(2; "ISBN Number"; Text[20])
        {
            Caption = 'ISBN Number';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(3; "Title"; Text[100])
        {
            Caption = 'Title';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(4; "Author"; Text[100])
        {
            Caption = 'Author';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(5; "Book Price"; Decimal)
        {
            Caption = ' Book Price';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(6; "Publication Date"; Date)
        {
            Caption = 'Publication Date';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(7; "Language"; Option)
        {
            Caption = 'Language';
            NotBlank = true;
            OptionMembers = English,French,Spanish,German,Italian,Chinese,Japanese,Korean,Arabic,Portuguese, ;
            DataClassification = ToBeClassified;
        }
        field(8; "Book Category"; Option)
        {
            Caption = 'Book Category';
            NotBlank = true;
            DataClassification = ToBeClassified;
            OptionMembers = Fiction,Nonfiction,Science,History,Mathematics,Technology,Art,Music,Health,Travel,Religion,Philosophy,SelfHelp,Psychology,Education,Reference,Comic,Children,Others;
        }
        field(9; "Publisher"; Text[100])
        {
            Caption = 'Publisher';
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Book ID")
        {
            Clustered = true;
        }
    }
}