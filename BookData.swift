//
//  BookData.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 4/19/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit
import Foundation

struct BoundBook {
    var bookTitle: String?
    var bookAuthor: String?
    var bookCategory: String?
    var noteNumber: Int
    var bookPagesRead: Int
    var bookHoursRead: Int
    var bookMinutesRead: Int
    var bookSecondsRead: Int
    
    init(bookTitle: String?, bookAuthor: String?, bookCategory: String?, noteNumber: Int, bookPagesRead: Int, bookHoursRead: Int, bookMinutesRead: Int, bookSecondsRead: Int) {
        self.bookTitle = bookTitle
        self.bookAuthor = bookAuthor
        self.bookCategory = bookCategory
        self.noteNumber = noteNumber
        self.bookPagesRead = bookPagesRead
        self.bookHoursRead = bookHoursRead
        self.bookMinutesRead = bookMinutesRead
        self.bookSecondsRead = bookSecondsRead
    }
}

var BookData = [
    BoundBook(bookTitle: "Lord of the Rings: The Fellowship of the Ring", bookAuthor: "J.R.R. Tolkien", bookCategory: "Casual Reading", noteNumber: 3, bookPagesRead: 27, bookHoursRead: 0, bookMinutesRead: 43, bookSecondsRead: 18)
]

var pickerDataSource = ["Pick a Reading Category", "Casual Reading", "Academic", "Coffee Reading", "Group Reading", "Religious", "Non-Fiction", "Fiction", "Work Reading", "Other"]

var count: Int = 0
var timerSeconds: Int = 0

func timeIntervalToHoursMinutesAndSeconds (count: Int) -> (Int, Int, Int) {
    return (timerSeconds / 3600, (timerSeconds % 3600) / 60, (timerSeconds % 3600) % 60)
}

var (hours, minutes, seconds) = timeIntervalToHoursMinutesAndSeconds(3661)

let hour = "hour"
let minute = "minute"
let second = "second"

var realTime = "\(hours):\(minutes):\(seconds)"

var writtenTime = "\(hours) hours \(minutes) minutes \(seconds) seconds"











