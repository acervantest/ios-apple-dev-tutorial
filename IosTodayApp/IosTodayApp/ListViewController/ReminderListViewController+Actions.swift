//
//  ReminderListViewController+Actions.swift
//  IosTodayApp
//
//  Created by Alejandro Cervantes on 2024-09-19.
//

import UIKit

extension ReminderListViewController {
    
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
