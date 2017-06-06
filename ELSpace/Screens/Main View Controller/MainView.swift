//
//  Created by Michał Czerniakowski on 05.06.2017.
//  Copyright © 2017 El Passion. All rights reserved.
//

import UIKit
import Pastel
import Anchorage
import HexColors

class MainView: UIView {
    
    private let gradientView = PastelView(frame: .zero)
    private let logoImageView = UIImageView(frame: .zero)
    private let loginButton = ButtonBase(frame: .zero)
    private let descriptionTitle = UILabel(frame: .zero)
    private let bottomLineView = UIView(frame: .zero)
    
    init() {
        super.init(frame: .zero)
        configureBackground()
        configureLoginButton()
        configureSubviews()
        configureAutolayout()
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    
    private func configureBackground(){
        gradientView.startPastelPoint = .topLeft
        gradientView.endPastelPoint = .bottomRight
        gradientView.animationDuration = 3.5
        
        gradientView.setColors([
                    UIColor("#17EAD9")!,
                    UIColor("#622774")!,
                    UIColor("#7177EA")!,
                    UIColor("#1BCEDF")!,
                    UIColor("#3BB2B8")!,
                    UIColor("#F02FC2")!,
                    UIColor("#5B247A")!])
        
        gradientView.startAnimation()
    }
    
    private func configureLoginButton(){
        let buttonTitle = R.string.localizable.google_login_button()
        
        loginButton.setTitle(buttonTitle, for: .normal)
        loginButton.backgroundColor = UIColor("EF5350")
    }
    
    private func configureSubviews(){
        
        logoImageView.image = #imageLiteral(resourceName: "asset_el_space_logo")
        
        addSubview(gradientView)
        addSubview(logoImageView)
        addSubview(loginButton)
    }
    
    private func configureAutolayout(){
        gradientView.edgeAnchors == self.edgeAnchors
        
        logoImageView.topAnchor == self.topAnchor + 40
        logoImageView.centerXAnchor == self.centerXAnchor
        
        loginButton.heightAnchor == 50
        loginButton.bottomAnchor == self.bottomAnchor - 20
        loginButton.horizontalAnchors == self.horizontalAnchors + 20
    }
}
