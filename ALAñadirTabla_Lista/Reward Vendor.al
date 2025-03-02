tableextension 50602 "Vendor Ext" extends Vendor
{
    fields
    {
        field(50000; "Reward ID Santi"; Code[30])
        {
            // Set links to the "Reward ID" from the Reward table.
            TableRelation = Reward."Reward ID Santi";

            // Set whether to validate a table relationship.
            ValidateTableRelation = true;

            // "OnValidate" trigger executes when data is entered in a field.
            trigger OnValidate();
            begin

                // If the "Reward ID" changed and the new record is blocked, an error is thrown. 
                if (Rec."Reward ID Santi" <> xRec."Reward ID Santi") and
                    (Rec.Blocked <> Blocked::" ") then begin
                    Error('Cannot update the rewards status of a blocked vendor.')
                end;
            end;
        }
    }
}