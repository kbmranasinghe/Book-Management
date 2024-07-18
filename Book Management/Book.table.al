table 50100 Book
{
    caption = 'Book';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;BookName; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; MyField; Blob)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(Key1; BookName)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}