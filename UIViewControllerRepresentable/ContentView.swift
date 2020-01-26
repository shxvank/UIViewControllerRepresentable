//
//  Created by Rob Sturgeon on 25/01/2020.
//
//  Cmd+click below in Xcode to find this post and others:
//  https://medium.com/@rob_sturgeon
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("SwiftUI in ContentView")
            VCSwiftUIView(storyboard: "Storyboard", VC: "initialVC")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
