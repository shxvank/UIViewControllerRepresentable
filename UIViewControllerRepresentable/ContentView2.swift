//
//  Created by Rob Sturgeon on 25/01/2020.
//
//  Cmd+click below in Xcode to find this post and others:
//  https://medium.com/@rob_sturgeon
//

import SwiftUI

struct ContentView2: View {
    @State var initialVCPresented = false
    @State var menuVCPresented = false
    let source: String
    var body: some View {
        VStack {
            Text("SwiftUI from ContentView2")
            Text(source)
            Spacer()
            Button(action: {self.initialVCPresented = true}) {
                Text("Present initialVC without SwiftUI")
                    .padding()
                    .background(Color.white)
            }
            Spacer()
            Button(action: {self.menuVCPresented = true}) {
                Text("Present menuVC")
                    .padding()
                    .background(Color.white)
                
            }
        }
            
        .sheet(isPresented: $initialVCPresented) {
            VCSwiftUIView(storyboard: "Storyboard", VC: "initialVC")
        }
        .sheet(isPresented: $menuVCPresented) {
            VCSwiftUIView(storyboard: "Storyboard", VC: "menuVC")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
    }
}
