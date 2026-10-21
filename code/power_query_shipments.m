let
    Source = Folder.Files("C:\Users\TEMP.SPB.031\Desktop\Shipments"),
    #"Filtered Hidden Files1" = Table.SelectRows(Source, each [Attributes]?[Hidden]? <> true),
    #"Invoke Custom Function1" = Table.AddColumn(#"Filtered Hidden Files1", "Transform File", each #"Transform File"([Content])),
    #"Renamed Columns1" = Table.RenameColumns(#"Invoke Custom Function1", {"Name", "Source.Name"}),
    #"Removed Other Columns1" = Table.SelectColumns(#"Renamed Columns1", {"Source.Name", "Transform File"}),
    #"Expanded Table Column1" = Table.ExpandTableColumn(#"Removed Other Columns1", "Transform File", Table.ColumnNames(#"Transform File"(#"Sample File"))),
    #"Changed Type" = Table.TransformColumnTypes(#"Expanded Table Column1",{{"Source.Name", type text}, {"OrderID", type text}, {"ShipmentDate", type date}, {"DeliveryDate", type date}, {"PromisedDate", type date}, {"CarrierID", type text}, {"ShippingCost", type text}, {"DeliveryStatus", type text}}),
    #"Replaced Value" = Table.ReplaceValue(#"Changed Type",".",",",Replacer.ReplaceText,{"ShippingCost"}),
    #"Changed Type1" = Table.TransformColumnTypes(#"Replaced Value",{{"ShippingCost", type number}}),
    #"Removed Duplicates" = Table.Distinct(#"Changed Type1")
in
    #"Removed Duplicates"
