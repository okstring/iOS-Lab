//
//  MyPhotoEntry.swift
//  Lab
//
//  Created by Ok Hyeon Kim on 2021/12/21.
//

import WidgetKit
import Foundation

struct MyPhotoEntry: TimelineEntry {
    let date: Date
    let defaultImageName: String = "okstring"
    let imageData: Data
    let profileURL: String
}
