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
                Text("Date")
                    .font(.body)
                    .fontWeight(.regular)
            }
        }
        .padding(.all, 10)
        .background {
            Image("okstring")
        }
        
            
    }
}
