//
//  ContentView.swift
//  UI-32
//
//  Created by にゃんにゃん丸 on 2020/11/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBarView()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
