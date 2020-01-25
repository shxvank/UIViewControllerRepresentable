//
//  Created by Rob Sturgeon on 25/01/2020.
//
//  Cmd+click below to find this post and others:
//  https://medium.com/@rob_sturgeon
//

import SwiftUI

struct ContentView2: View {
    @State var isPresented = false
    var body: some View {
        VStack {
            Text("ContentView2 presented by HostingController on Storyboard")
            Button(action: {self.isPresented = true}) {
                Text("Present ViewController without SwiftUI")
            }
        .sheet(isPresented: $isPresented) {
            InitialVC()
        }
        }
        
    }
}
