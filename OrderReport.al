report 50101 "Order Report"
{
    Caption = 'Order report';
    DefaultLayout = RDLC;
    RDLCLayout = './rdlc/OrderReport.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {

            }
            column(Sell_to_Address; "Sell-to Address")
            {

            }
            column(Sell_to_Phone_No_; "Sell-to Phone No.")
            {

            }
            column(No_; "No.")
            {

            }
            column(Order_Date; "Order Date")
            {

            }
            column(Ship_to_Address; "Ship-to Address")
            {

            }

            dataitem("Sales Line"; "Sales Line")
            {

                DataItemLinkReference = "Sales header";
                DataItemLink = "Sell-to Customer No." = field("Sell-to Customer No.");

                column("No_Item"; "No.")
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Unit_Price; "Unit Price")
                {

                }
                column(Line_Amount; "Line Amount")
                {

                }

            }
        }


    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Name; myInt)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

    }
    labels
    {
        Name = 'Name';
        Adress = 'Adress';
        PhoneNo = 'Phone No.';
        OrderNo = 'Order No.';
        OrderDate = 'Order date';
        ShipToAdress = 'Ship to adress';
    }


    var
        myInt: Integer;
}