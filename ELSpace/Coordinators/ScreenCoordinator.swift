//
//  Created by Michał Czerniakowski on 07.06.2017.
//Copyright © 2017 El Passion. All rights reserved.
//

import UIKit

class ScreenCoordinator {
    
    fileprivate let window: UIWindow
    
    fileprivate let mainViewController = MainViewController()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    internal func present() {
        window.rootViewController = mainViewController
        window.makeKeyAndVisible()
    }
}
