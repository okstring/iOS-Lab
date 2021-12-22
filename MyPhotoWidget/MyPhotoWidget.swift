//
//  MyPhotoWidget.swift
//  MyPhotoWidget
//
//  Created by Ok Hyeon Kim on 2021/12/21.
//

import WidgetKit
import SwiftUI

@main
struct MyPhotoWidget: Widget {
    let kind: String = "kr.maylily.Lab.MyPhotoWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind,
                            provider: Provider()) { entry in
            MyPhotoWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Github Profile")
        .description("User Repository로 이동합니다.")
        .supportedFamilies([.systemSmall])

    }
}

struct MyPhotoWidget_Previews: PreviewProvider {
    static var previews: some View {
        MyPhotoWidgetEntryView(entry: MyPhotoEntry(date: Date(), imageData: Data(), profileURL: ""))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
