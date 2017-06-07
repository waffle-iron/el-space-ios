//
//  Created by Michał Czerniakowski on 07.06.2017.
//Copyright © 2017 El Passion. All rights reserved.
//

import UIKit
import Pastel
import Anchorage
import HexColors

class ScreenBase: UIView {
    
    private let gradientView = PastelView(frame: .zero)
    private let logoImageView = UIImageView(frame: .zero)
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    init() {
        super.init(frame: .zero)
        configureBackgroundGradient()
        configureSubviews()
        configureAutolayout()
    }
    
    private func configureBackgroundGradient() {
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
    
    private func configureSubviews() {
        logoImageView.image = #imageLiteral(resourceName: "asset_el_space_logo")
        
        addSubview(gradientView)
        addSubview(logoImageView)
    }
    
    private func configureAutolayout() {
        gradientView.edgeAnchors == self.edgeAnchors
        
        logoImageView.topAnchor == self.topAnchor + 40
        logoImageView.centerXAnchor == self.centerXAnchor
    }
    
}
