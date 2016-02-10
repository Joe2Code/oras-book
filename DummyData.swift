//
//  DummyData.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 2/5/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

struct DummyData {
    var bookTitle: String?
    var dateLastEntry: Int
    var timeLastEntry: Int
    var entryNumber: Int
    var timeReadingTotal: Int
    var pagesRead: Int
    var notesNumber: Int
    
    init(bookTitle: String?, dateLastEntry: Int, timeLastEntry: Int, entryNumber: Int, timeReadingTotal: Int, pagesRead: Int, notesNumber: Int) {
        self.bookTitle = bookTitle
        self.dateLastEntry = dateLastEntry
        self.timeLastEntry = timeLastEntry
        self.entryNumber = entryNumber
        self.timeReadingTotal = timeReadingTotal
        self.pagesRead = pagesRead
        self.notesNumber = notesNumber
    }
    
}

let sampleData = [
    DummyData(bookTitle: "Lord of the Rings", dateLastEntry: 10, timeLastEntry: 19, entryNumber: 2, timeReadingTotal: 15, pagesRead: 3, notesNumber: 2),
    DummyData(bookTitle: "Mere Christianity", dateLastEntry: 20, timeLastEntry: 3, entryNumber: 17, timeReadingTotal: 28, pagesRead: 45, notesNumber: 8)

]