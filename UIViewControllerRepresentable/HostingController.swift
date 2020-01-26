//
//  Created by Rob Sturgeon on 25/01/2020.
//
//  Cmd+click below in Xcode to find this post and others:
//  https://medium.com/@rob_sturgeon
//

import SwiftUI

class HostingController: UIHostingController<AnyView> {

    @objc required dynamic init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: AnyView(EmptyView()))
    }
}
