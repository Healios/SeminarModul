pageextension 123456700 "CSD Resource Card Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {
            }
        }

        addafter("Personal Data")
        {
            group("Room")
            {
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {
                    Visible = ShowMaxField;
                }
            }
        }
    }

    trigger OnAfterGetRecord();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}