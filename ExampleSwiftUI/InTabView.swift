//
//  InTabView.swift
//  Parchment
//
//  Created by So Nakamura on 2025/08/12.
//  Copyright © 2025 Martin Rechsteiner. All rights reserved.
//

import Parchment
import SwiftUI

struct InTabView: View {
  var body: some View {
    TabView {
      PageView {
        Page { _ in
          Text("List")
        } content: {
          List {
            ForEach(0..<100, id: \.self) { index in
              Text("List Item \(index)")
                .font(.largeTitle)
            }
          }
        }
        Page { _ in
          Text("Just text")
        } content: {
          Text("A tab")
        }
      }
      .tabItem {
        Label("Page View", systemImage: "book")
      }
      List {
        ForEach(0..<100, id: \.self) { index in
          Text("List Item \(index)")
            .font(.largeTitle)
        }
      }
      .tabItem {
        Label("List", systemImage: "list.bullet")
      }
    }
  }
}

