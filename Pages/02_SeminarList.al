page 123456702 "Seminar List"
{
    Caption = 'Seminar List';
    PageType = List;
    CardPageId = "Seminar Card";
    Editable = false;
    SourceTable = Seminar;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {

                }

                field(Name; Name)
                {

                }

                field("Seminar Duration"; "Seminar Duration")
                {

                }

                field("Seminar Price"; "Seminar Price")
                {

                }

                field("Minimum Participants"; "Minimum Participants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }
            }
        }

        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }

            systempart("Notes"; Notes)
            {

            }
        }
    }

    actions
    {

        area(Navigation)
        {
            group("&Seminar")
            {
                //8.1
                action("Ledger Entries")
                {
                    Caption = 'Ledger Entries';
                    RunObject = page "Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field ("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl+F7";
                    Image = WarrantyLedger;
                }

                action("&Registrations")
                {
                    Caption = 'Registrations';
                    RunObject = page "Seminar Registration List";
                    RunPageLink = "Seminar No." = field ("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    Image = Timesheet;
                }
                //8.1

                action("Co&mments")
                {
                    Caption = 'Comments';
                    RunObject = page "Seminar Comment Sheet";
                    RunPageLink = "Table name" = const (Seminar), "No." = field ("No.");
                    Image = Comment;
                }
            }
        }

        area(Processing)
        {
            action("Seminar Registration")
            {
                Caption = 'Seminar Registration';
                RunObject = page "Seminar Registration List";
                RunPageLink = "Seminar No." = field ("No.");
                RunPageMode = Create;
                Promoted = true;
                PromotedCategory = New;
                Image = NewTimesheet;
            }
        }
    }
}