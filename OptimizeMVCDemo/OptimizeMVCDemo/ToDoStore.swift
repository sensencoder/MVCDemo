//
//  ToDoStore.swift
//  OptimizeMVCDemo
//
//  Created by 何亭亭 on 2017/8/22.
//  Copyright © 2017年 sensencoder. All rights reserved.
//

import Foundation

let dummy = [
    "Buy the milk",
    "Take my dog",
    "Rent a car"
]

struct ToDoStore {
    static let shared = ToDoStore()
    func getToDoItems(completionHandler:(([String]) -> Void)?) {
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            completionHandler?(dummy)
        }
    }
}
