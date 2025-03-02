page 50603 "Reward List"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = Reward;
    CardPageId = "Reward Card";

    layout
    {
        area(Content)
        {
            repeater(Rewards)
            {
                field("Reward ID Santi"; Rec."Reward ID Santi")
                {
                    ApplicationArea = ALL;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = ALL;
                }
                field("Discount Percentage"; Rec."Discount Percentage")
                {
                    ApplicationArea = ALL;
                }
            }
        }
    }
}