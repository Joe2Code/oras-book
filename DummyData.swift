//
//  DummyData.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 2/5/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

func secondsToTime (seconds: Int) -> (Int, Int, Int) {
    return (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
}

struct DummyData {
    var bookTitle: String?
    var noteNumber: Int?
    var totalTimeRead = secondsToTime
    
    init(bookTitle: String?, noteNumber: Int?, totalTimeRead: Int?) {
        self.bookTitle = bookTitle
        self.noteNumber = noteNumber
        self.totalTimeRead = secondsToTime
    }
    

}
let sampleData = [
    DummyData(bookTitle: "Lord of the Rings", noteNumber: 5, totalTimeRead: 7000),
    DummyData(bookTitle: "Mere Christianity", noteNumber: 7, totalTimeRead: 2390),
    DummyData(bookTitle: "A Tale of Two Cities", noteNumber: 3, totalTimeRead: 29003)
]
    
