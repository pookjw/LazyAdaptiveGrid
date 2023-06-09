//
//  ContentView.swift
//  Demo
//
//  Created by Jinwoo Kim on 3/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView { 
            LazyVGrid(
                columns: [
                    .init(
                        .adaptive(minimum: 150.0),
                        spacing: .zero,
                        alignment: .leading
                    )
                ],
                alignment: .leading,
                spacing: .zero
            ) { 
                ForEach(0..<3_000) { index in
                    Color(
                        red: .random(in: .zero...1.0),
                        green: .random(in: .zero...1.0), 
                        blue: .random(in: .zero...1.0)
                    )
                    .aspectRatio(1.0, contentMode: .fit)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
