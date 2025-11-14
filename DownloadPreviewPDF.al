pageextension 60100 PostedSalesInvoice extends "Posted Sales Invoices"
{
    actions
    {
        addbefore(Print)
        {
            action("Download PDF")
            {
                ApplicationArea = All;
                Promoted = true;
                trigger OnAction()
                var
                    Rec_Ref: RecordRef;
                    TempBlob: Codeunit "Temp Blob";
                    OutStr: OutStream;
                    InStr: InStream;
                    FileName: Text;
                begin
                    Rec_Ref.GetTable(Rec);
                    Rec_Ref.SetView('Where(No.=Const(' + Rec."No." + '))');
                    TempBlob.CreateOutStream(OutStr);
                    Report.SaveAs(1306, '', ReportFormat::Pdf, OutStr, Rec_Ref);
                    TempBlob.CreateInStream(InStr);
                    FileName := DelChr(Rec."No.", '=', '/') + '.PDF';
                    DownloadFromStream(InStr, '', '', '', FileName);
                end;
            }
            action("Preview PDF")
            {
                ApplicationArea = All;
                Promoted = true;
                trigger OnAction()
                var
                    Rec_Ref: RecordRef;
                    TempBlob: Codeunit "Temp Blob";
                    OutStr: OutStream;
                    InStr: InStream;
                    FileName: Text;
                begin
                    Rec_Ref.GetTable(Rec);
                    Rec_Ref.SetView('Where(No.=Const(' + Rec."No." + '))');
                    TempBlob.CreateOutStream(OutStr);
                    Report.SaveAs(1306, '', ReportFormat::Pdf, OutStr, Rec_Ref);
                    TempBlob.CreateInStream(InStr);
                    FileName := DelChr(Rec."No.", '=', '/') + '.PDF';
                    File.ViewFromStream(InStr, FileName, false);
                end;
            }
        }
    }
}