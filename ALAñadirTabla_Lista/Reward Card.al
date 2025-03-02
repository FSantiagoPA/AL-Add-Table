page 50604 "Reward Card"
{
    PageType = Card;
    UsageCategory = Tasks;
    SourceTable = Reward;

    layout
    {
        area(Content)
        {
            group(Reward)
            {
                field("Reward ID Santi"; Rec."Reward ID Santi")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = ALL;
                }
                field("Discount Percentage"; Rec."Discount Percentage")
                {
                    ApplicationArea = ALL;
                }
                field("Minimun Purchase"; Rec."Minimun Purchase")
                {
                    ApplicationArea = ALL;
                }
            }
        }
    }
}