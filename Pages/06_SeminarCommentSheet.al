page 123456706 "Seminar Comment Sheet"
{
    Caption = 'Seminar Comment Sheet';
    PageType = List;
    SourceTable = "Seminar Comment Line";
    AutoSplitKey=true;
    UsageCategory = Tasks;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Date"; "Date")
                {

                }

                field("Code"; "Code")
                {
                    Visible = false;
                }

                field("Comment"; Comment)
                {

                }
            }
        }
        area(factboxes)
        {
        }
    }

    trigger OnNewRecord(BelowxRec : Boolean);
    begin
        SetupNewLine();        
    end;
}