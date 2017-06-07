//
//  Created by Michał Czerniakowski on 31.05.2017.
//  Copyright © 2017 El Passion. All rights reserved.
//

import UIKit
import GoogleSignIn
import Anchorage

class MainViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        GIDSignIn.sharedInstance().hostedDomain = "elpassion.pl"
        
        let button = GIDSignInButton()
        view.addSubview(button)
        button.sizeAnchors == CGSize(width: 100, height: 44)
        button.centerAnchors == view.centerAnchors
    }

}
