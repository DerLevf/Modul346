IF purchPriceRec2.FINDSET() THEN BEGIN
    IF Rec."Direct Unit Cost" <> purchPriceRec2."Direct Unit Cost" THEN BEGIN
        IF NOT DialogueAnswered THEN
        //answ := DIALOG.CONFIRM('Abweichender EK-Preis - soll der neue Preis im Artikel hinterlegt werden?', TRUE);
        answ := DIALOG.CONFIRM(Text50001, TRUE);
    IF answ THEN BEGIN
        purchPriceRec2."Direct Unit Cost" := Rec."Direct Unit Cost";
        purchPriceRec2.MODIFY();
            IF (Rec."Currency Code" = fibuRec."LCY Code") OR (Rec."Currency Code" = '') THEN BEGIN
                itemRec."Last Direct Cost" := Rec."Direct Unit Cost";
                itemRec.MODIFY();
            END;
        END;
    currencyExRec.SETFILTER(currencyExRec."Currency Code", Rec."Currency Code");
    currencyExRec.FINDSET();
    currencyExRec.FINDLAST();

    itemRec."Last Direct Cost" :=
    currencyExRec.ExchangeAmtFCYToLCY
    (
    WORKDATE(),
    Rec."Currency Code",
    Rec."Direct Unit Cost",
    currencyExRec."Adjustment Exch. Rate Amount"
    );

    itemRec."Last Direct Cost" := ROUND(itemRec."Last Direct Cost", 0.01);
    itemRec.MODIFY();
//
    END;
END ELSE BEGIN
//
    currencyExRec.SETFILTER(currencyExRec."Currency Code", Rec."Currency Code");
    currencyExRec.FINDSET();
    currencyExRec.FINDLAST();

    itemRec."Last Direct Cost" :=
    currencyExRec.ExchangeAmtFCYToLCY

    (
    WORKDATE(),
    Rec."Currency Code",
    Rec."Direct Unit Cost",
    currencyExRec."Adjustment Exch. Rate Amount"
    );

    itemRec."Last Direct Cost" := ROUND(itemRec."Last Direct Cost", 0.01);

    itemRec.MODIFY();

//

END ELSE BEGIN
    CLEAR(purchPriceRec2);
    purchPriceRec2.INIT();
    purchPriceRec2."Vendor No." := Rec."Buy-from Vendor No.";
    purchPriceRec2."Unit of Measure Code" := Rec."Unit of Measure Code";
    purchPriceRec2."Item No." := Rec."No.";
    purchPriceRec2."Direct Unit Cost" := Rec."Direct Unit Cost";
    purchPriceRec2."Currency Code" := Rec."Currency Code";
    purchPriceRec2."Starting Date" := WORKDATE();
    purchPriceRec2.INSERT();
  END;
