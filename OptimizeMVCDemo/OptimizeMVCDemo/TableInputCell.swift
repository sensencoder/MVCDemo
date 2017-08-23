//
//  ToDoStore.swift
//  OptimizeMVCDemo
//
//  Created by 何亭亭 on 2017/8/22.
//  Copyright © 2017年 sensencoder. All rights reserved.
//

import UIKit

protocol TableViewInputCellDelegate: class {
    func inputChanged(cell: TableViewInputCell, text: String)
}

class TableViewInputCell: UITableViewCell {
    weak var delegate: TableViewInputCellDelegate?
    @IBOutlet weak var textField: UITextField!
    @objc @IBAction func textFieldValueChanged(_ sender: UITextField) {
        delegate?.inputChanged(cell: self, text: sender.text ?? "")
    }
}
