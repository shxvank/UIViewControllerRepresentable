//
//  Created by Rob Sturgeon on 25/01/2020.
//
//  Cmd+click below in Xcode to find this post and others:
//  https://medium.com/@rob_sturgeon
//

import UIKit
import SwiftUI
class ViewController: UIViewController {
    @IBAction func contentViewPressed(_ sender: Any) {
        let contentView = ContentView()
        let hostingController = UIHostingController(rootView: contentView)
        if let window = self.view.window {
            window.rootViewController = hostingController
        }
        
    }
    
    @IBAction func contentView2Pressed(_ sender: Any) {
        let contentView = ContentView2(source: "rootView of UIHostingController created in ViewController")
        let hostingController = UIHostingController(rootView: contentView)
        if let window = self.view.window {
            window.rootViewController = hostingController
        }
    }
    
    @IBAction func dismissPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: {
            print("Dismissed!")
        })
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var swiftUIView: AnyView {
            switch segue.identifier {
            case "ContentView": return AnyView(ContentView())
            case "ContentView2": return AnyView(ContentView2(source: "rootView of HostingController on storyboard"))
            default: return AnyView(ContentView())
            }
        }
        
        if let hostingController = segue.destination as? HostingController {
            hostingController.rootView = swiftUIView
        }
    }
}
