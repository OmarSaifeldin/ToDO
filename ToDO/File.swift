//
//  File.swift
//  ToDO
//
//  Created by Omar Saifeldin on 26/08/2023.
//

import Foundation

struct Todo: Identifiable {
    let id = UUID()
    var title: String
    var subtitle = ""
    var isCompleted = false
}
