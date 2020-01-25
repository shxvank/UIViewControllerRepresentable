//
//  Created by Rob Sturgeon on 25/01/2020.
//
//  Cmd+click below to find this post and others:
//  https://medium.com/@rob_sturgeon
//

import SwiftUI
import UIKit
struct InitialVC: UIViewControllerRepresentable {
    

  func makeUIViewController(context: UIViewControllerRepresentableContext<InitialVC>) -> ViewController {
    let storyBoard = UIStoryboard(name: "Storyboard", bundle: nil)
    return storyBoard.instantiateViewController(withIdentifier: "InitialVC") as! ViewController
  }
  
  func updateUIViewController(_ uiViewController: ViewController, context: UIViewControllerRepresentableContext<InitialVC>) {
  }
 
}
