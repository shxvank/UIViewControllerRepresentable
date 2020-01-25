//
//  ContentView.swift
//  UIViewControllerRepresentable
//
//  Created by Rob Sturgeon on 25/01/2020.
//
//  Cmd+click below to find this post and others:
//  https://medium.com/@rob_sturgeon
//



import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("SwiftUI in ContentView")
            UIKitVC()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
