//
//  TextStyleHelperApp.swift
//  TextStyleHelper
//
//  Created by Seb Vidal on 20/06/2023.
//

import AppKit
import SwiftUI

@main
struct TextStyleHelperApp: App {
    let textStyles: [TextStyle] = [
        TextStyle(name: "Large Title", weight: "Regular", pointSize: 34),
        TextStyle(name: "Title 1", weight: "Regular", pointSize: 28),
        TextStyle(name: "Title 2", weight: "Regular", pointSize: 22),
        TextStyle(name: "Title 3", weight: "Regular", pointSize: 20),
        TextStyle(name: "Headline", weight: "Semi-Bold", pointSize: 17),
        TextStyle(name: "Body", weight: "Regular", pointSize: 17),
        TextStyle(name: "Callout", weight: "Regular", pointSize: 16),
        TextStyle(name: "Subheadline", weight: "Regular", pointSize: 15),
        TextStyle(name: "Footnote", weight: "Regular", pointSize: 13),
        TextStyle(name: "Caption 1", weight: "Regular", pointSize: 12),
        TextStyle(name: "Caption 2", weight: "Regular", pointSize: 11),
    ]
    
    var body: some Scene {
        MenuBarExtra("TextStyleHelper", systemImage: "textformat") {
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Style")
                        .font(.headline)

                    Divider()
                        .padding(.top, 9)
                        .padding(.bottom, 6)
                    
                    ForEach(textStyles, id: \.self) { textStyle in
                        Text(textStyle.name)
                            .font(.body)
                    }
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Weight")
                        .font(.headline)
                    
                    Divider()
                        .padding(.top, 9)
                        .padding(.bottom, 6)
                    
                    ForEach(textStyles, id: \.self) { textStyle in
                        Text(textStyle.weight)
                            .font(.body)
                            .foregroundStyle(.secondary)
                    }
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Size")
                        .font(.headline)
                    
                    Divider()
                        .padding(.top, 9)
                        .padding(.bottom, 6)
                    
                    ForEach(textStyles, id: \.self) { textStyle in
                        Text("\(Int(textStyle.pointSize))")
                            .font(.body)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .padding(.top, 13)
            .padding(.horizontal, 14)
            .padding(.bottom, 14)
        }
        .menuBarExtraStyle(.window)
    }
}

struct TextStyle: Hashable {
    let name: String
    let weight: String
    let pointSize: CGFloat
}
