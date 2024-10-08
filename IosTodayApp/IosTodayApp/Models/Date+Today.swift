//
//  Date+Today.swift
//  IosTodayApp
//
//  Created by Alejandro Cervantes on 2024-09-16.
//

import Foundation

extension Date {
    
    var dayAndTimeText: String {
        let timeText = formatted(date: .omitted, time: .shortened)
        if Locale.current.calendar.isDateInToday(self) {
            let timeFormat = NSLocalizedString("Today at %@", comment: "Today at time format string")
            return String(format: timeFormat, timeText)
        } else {
            let dateText = formatted(.dateTime.month(.abbreviated).day())
            let dateAndTimeFormat = NSLocalizedString("%@ at %@", comment: "Date and Time format string")
            return String(format: dateAndTimeFormat, dateText, timeText)
        }
    }
    
    var dayString: String {
        let day = formatted(.dateTime)
        let localized = NSLocalizedString("%@", comment: "Date only string")
        return String(format: localized, day)
    }
    
    var dateText: String {
        if Locale.current.calendar.isDateInToday(self) {
            return NSLocalizedString("Today", comment: "Today due date description")
        } else {
            return formatted(.dateTime.month().day().weekday(.wide))
        }
    }
}
