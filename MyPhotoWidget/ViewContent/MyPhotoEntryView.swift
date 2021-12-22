//
//  MyPhotoEntryView.swift
//  Lab
//
//  Created by Ok Hyeon Kim on 2021/12/21.
//

import SwiftUI
import WidgetKit

struct MyPhotoWidgetEntryView : View {
    var entry: Provider.Entry
    
    var body: some View {
        VStack {
            Spacer()
            HStack(alignment: .firstTextBaseline) {
                VStack (alignment: .leading){
                    Text("okstring")
                        .font(.headline)
                        .fontWeight(.bold)
                        .allowsTightening(true)
                }
                Spacer()
                Text(DateFormatter.shortTimeFormatter.string(from: entry.date))
                    .font(.body)
                    .fontWeight(.regular)
            }
            
        }
        .padding(.all, 10)
        .background {
            entry.imageData.isEmpty
            ? Image("okstring")
            : Image(uiImage: UIImage(data: entry.imageData) ?? UIImage())
        }.widgetURL(URL(string: "lab://repo?url=\(entry.profileURL)"))
    }
}
