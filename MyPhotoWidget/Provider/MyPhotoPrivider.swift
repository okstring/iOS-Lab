//
//  MyPhotoPrivider.swift
//  Lab
//
//  Created by Ok Hyeon Kim on 2021/12/21.
//

import Foundation
import WidgetKit

struct Provider: TimelineProvider {
    let viewModel = Interactor()
    
    func placeholder(in context: Context) -> MyPhotoEntry {
        MyPhotoEntry(date: Date(), imageData: Data(), profileURL: "")
    }

    func getSnapshot(in context: Context, completion: @escaping (MyPhotoEntry) -> ()) {
        let entry = MyPhotoEntry(date: Date(), imageData: Data(), profileURL: "")
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<MyPhotoEntry>) -> ()) {
        var entries: [MyPhotoEntry] = []
        
        let currentDate = Date()
        
        let group = DispatchGroup()
        
        let fetchQueue = DispatchQueue(label: "kr.maylily.Lab.MyPhotoWidget.fetchQueue", attributes: .concurrent)
        
        let entryDate = Calendar.current.date(byAdding: .hour, value: 1, to: currentDate)!
        
        
        fetchQueue.async(group: group) {
            for index in 0..<viewModel.imagesURL.count {
                group.enter()
                
                viewModel.fetchAllImageData(index: index) { result in
                    switch result {
                    case .success(let data):
                        let entry = MyPhotoEntry(date: entryDate, imageData: data, profileURL: viewModel.profileURL[index])
                        entries.append(entry)
                        group.leave()
                    case .failure(let error):
                        print(error)
                        group.leave()
                    }
                }
            }
        }
        
        let queueForGroup = DispatchQueue(label: "kr.maylily.Lab.MyPhotoWidget.queueForGroup")
        
        group.notify(queue: queueForGroup) {
            let timeline = Timeline(entries: entries, policy: .atEnd)
            completion(timeline)
        }
        
        group.resume()
        
    }
}
