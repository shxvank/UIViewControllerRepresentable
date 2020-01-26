//
//  Created by Rob Sturgeon on 25/01/2020.
//
//  Cmd+click below in Xcode to find this post and others:
//  https://medium.com/@rob_sturgeon
//

import SwiftUI
import UIKit

struct VCSwiftUIView: UIViewControllerRepresentable {
    let storyboard: String
    let VC: String

  func makeUIViewController(context: UIViewControllerRepresentableContext<VCSwiftUIView>) -> ViewController {
    
    //Load the storyboard
    let loadedStoryboard = UIStoryboard(name: storyboard, bundle: nil)
    
    //Load the ViewController
     return loadedStoryboard.instantiateViewController(withIdentifier: VC) as! ViewController
    
  }
  
  func updateUIViewController(_ uiViewController: ViewController, context: UIViewControllerRepresentableContext<VCSwiftUIView>) {
  }
}
