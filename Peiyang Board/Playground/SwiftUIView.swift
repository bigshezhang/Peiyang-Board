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
    

struct SwiftUI: View {
    @State private var action: Int? = 0
    @State var isActive = false
    var body: some View {
        

            VStack {
                NavigationLink(destination: Text("Destination_1"), isActive: $isActive) {
//                    EmptyView()
                }
                NavigationLink(destination: Text("Destination_2"), tag: 2, selection: $action) {
                    EmptyView()
                }
                
                Text("Your Custom View 1")
                    .onTapGesture {
                        //perform some tasks if needed before opening Destination view
                        isActive = true
                    }
                Text("Your Custom View 2")
                    .onTapGesture {
                        //perform some tasks if needed before opening Destination view
                        self.action = 2
                    }
            
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI()
    }
}
