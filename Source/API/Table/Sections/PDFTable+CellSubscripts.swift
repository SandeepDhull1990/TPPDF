//
//  PDFTable+SingleCellSubscripts.swift
//  TPPDF
//
//  Created by Philip Niedertscheider on 22.12.19.
//

import Foundation

extension PDFTable {

    /**
     Accessor for a specific cell at the given position

     - parameter row: Index of row
     - parameter column: Index of column

     - returns: cell at given indicies
     */
    public subscript(position: PDFTableCellPosition) -> PDFTableCell {
        get {
            return self[position.row, position.column]
        }
        set {
            self[position.row, position.column] = newValue
        }
    }

    /**
     Accessor for a specific cell at the given position

     - parameter row: Index of row
     - parameter column: Index of column

     - returns: cell at given indicies
     */
    public subscript(row: Int, column: Int) -> PDFTableCell {
        get {
            return self.cells[row][column]
        }
        set {
            self.cells[row][column] = newValue
        }
    }
}