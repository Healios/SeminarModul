pageextension 123456700 "CSD Resource Card Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("Resource Type"; "CSD Resource Type")
            {
            }
            field("Quantity Per Day"; "CSD Quantity Per Day")
            {
            }
        }

        addafter("Personal Data")
        {
            group("Room")
            {
                 Visible = ShowMaxField;
                field("Maximum Participants"; "CSD Maximum Participants")
                {
        
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