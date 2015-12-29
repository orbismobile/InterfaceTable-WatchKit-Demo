//
//  InterfaceController.swift
//  TableWatch Extension
//
//  Created by Erik Flores on 12/29/15.
//  Copyright © 2015 Orbis. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var table: WKInterfaceTable!
    @IBOutlet var btnMore: WKInterfaceButton!
    
    let data = ["1","2","3","4","5","6","7","8","9","10"]
    var numberRow: Int!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.numberRow = 0
        printTable(self.numberRow, limitRow: 5)
    }
    
    
    @IBAction func showMore() {
        printTable(self.numberRow, limitRow: 10)
    }
    
    func printTable(numberRow: Int, limitRow: Int) -> Void {
        for index in numberRow..<limitRow {
            self.table.insertRowsAtIndexes(NSIndexSet(index: index), withRowType: "tableRow")
            if let rowController = self.table.rowControllerAtIndex(index) as? TableRow {
                rowController.lblText.setText(data[index])
            }
        }
        self.numberRow = self.table.numberOfRows
        if self.numberRow ==  10 {
            self.btnMore.setHidden(true)
        }
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
