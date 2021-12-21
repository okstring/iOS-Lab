//
//  MyPhotoPrivider.swift
//  Lab
//
//  Created by Ok Hyeon Kim on 2021/12/21.
//

import Foundation
import WidgetKit

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> MyPhotoEntry {
        MyPhotoEntry(date: Date(), photoURL: "https://avatars.githubusercontent.com/u/62657991?v=4")
    }

    func getSnapshot(in context: Context, completion: @escaping (MyPhotoEntry) -> ()) {
        let entry = MyPhotoEntry(date: Date(), photoURL: "https://avatars.githubusercontent.com/u/62657991?v=4")
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<MyPhotoEntry>) -> ()) {
        var entries: [MyPhotoEntry] = []
    
        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        
        let entryDate = Calendar.current.date(byAdding: .minute, value: 30, to: currentDate)!
        let entry = MyPhotoEntry(date: entryDate, photoURL: "https://avatars.githubusercontent.com/u/62657991?v=4")
        entries.append(entry)

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}
