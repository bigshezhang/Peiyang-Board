//
//  SwiftUIView.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/12.
//

import SwiftUI

struct DismissingView1: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button("Dismiss Me") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView: View {
    @State private var showingDetail = false
    var body: some View {
        Button("Show Detail") {
            showingDetail = true
        }
        .sheet(isPresented: $showingDetail) {
            DismissingView1()
        }
    }
        
}
    
struct test_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
