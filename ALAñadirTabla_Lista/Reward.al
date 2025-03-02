// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.Santi;

table 50600 Reward
{
    DataClassification = ToBeClassified;

    fields
    {
        // The "Reward ID" field represents the unique identifier 
        // of the reward and can contain up to 30 Code characters.
        field(1; "Reward ID Santi"; Code[30])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Description"; Text[250])
        {
            // This property specified that 
            // this field cannot be left empty.
            NotBlank = true;
        }

        // The "Discount Percentage" field is a Decimal numeric value
        // that represents the discount that will 
        // be applied for this reward.
        field(3; "Discount Percentage"; Decimal)
        {
            // The "MinValue" property sets the minimum value for the "Discount Percentage" 
            // field.
            MinValue = 0;
            // The "MaxValue" property sets the maximum value for the "Discount Percentage"
            // field.
            MaxValue = 100;
            // The "DecimalPlaces" property is set to 2 to display discount values with  
            // exactly 2 decimals.
            DecimalPlaces = 2;
        }

        field(4; "Minimun Purchase"; Decimal)
        {
            MinValue = 0;
            DecimalPlaces = 2;
        }
    }

    keys
    {
        // The field "Reward ID" is used as the primary key of this table.
        key(PK; "Reward ID Santi")
        {
            // Create a clustered index from this key.
            Clustered = true;
        }
    }
}