//
//  CustomAlertViewDelegate.swift
//  Bolts
//
//  Created by Walinns Innovation on 12/07/18.
//

import Foundation

protocol CustomAlertViewDelegate: class {
    func okButtonTapped(selectedOption: String, textFieldValue: String)
    func cancelButtonTapped()
}
