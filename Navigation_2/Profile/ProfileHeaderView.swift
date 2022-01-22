//
//  ProfileHeaderView.swift
//  Navigation_2
//
//  Created by Ibragim Assaibuldayev on 18.01.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    override func draw(_ rect: CGRect) {
        guard let ctx = UIGraphicsGetCurrentContext() else {
            return
    }
    
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 187, y: 80)
        label.textAlignment = .center
        label.text = "Ibragim"
        label.font = .boldSystemFont(ofSize: 18)
        self.addSubview(label)
        
    let secondLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        secondLabel.center = CGPoint(x: 220, y: 120)
        secondLabel.textAlignment = .center
        secondLabel.text = "активный отдых"
        secondLabel.font = .boldSystemFont(ofSize: 14)
        secondLabel.textColor = .gray
        self.addSubview(secondLabel)
    
    let profile = UIImageView(frame: CGRect(x: 16, y: 45, width: 100, height: 100))
        profile.image = UIImage(named: "profile")
        profile.layer.borderColor = UIColor.white.cgColor
        profile.clipsToBounds = true
        profile.layer.borderWidth = 3
        profile.layer.cornerRadius = 50
        self.addSubview(profile)
    }
}
