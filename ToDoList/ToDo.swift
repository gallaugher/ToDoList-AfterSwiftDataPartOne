//
//  ToDosViewModel.swift
//  ToDoList
//  Created by John Gallaugher on 10/9/22
//  YouTube: YouTube.com/profgallaugher, Twitter: @gallaugher

import Foundation
import SwiftData

@Model
class ToDo {
    @Attribute(.unique) var item = ""
    var reminderIsOn = false
    var dueDate = Date.now + (60*60*24)
    var notes = ""
    var isCompleted = false
    
    init(item: String = "", reminderIsOn: Bool = false, dueDate: Date = .now + (60*60*24), notes: String = "", isCompleted: Bool = false) {
        self.item = item
        self.reminderIsOn = reminderIsOn
        self.dueDate = dueDate
        self.notes = notes
        self.isCompleted = isCompleted
    }
}
