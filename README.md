# InterfaceTable Watchkit Demo
Interface Table demo for watchkit with button "more", same to scroll infinity

Implementation
---------------
For the implementation we have considered insert the row one by one and after set the rowController
```Swift
for index in numberRow..<limitRow {
    self.table.insertRowsAtIndexes(NSIndexSet(index: index), withRowType: "tableRow")
    if let rowController = self.table.rowControllerAtIndex(index) as? TableRow {
        rowController.lblText.setText(self.data[index])
    }
}
```

![Interface Table](https://github.com/orbismobile/InterfaceTable-WatchKit-Demo/blob/master/screens/interfaceTable1.png)
![Interface Table](https://github.com/orbismobile/InterfaceTable-WatchKit-Demo/blob/master/screens/interfaceTable2.png)
