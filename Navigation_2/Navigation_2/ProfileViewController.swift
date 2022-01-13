//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Ibragim Assaibuldayev on 05.12.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let imageProfile = UIImage(named: "profile")
    var imageViewProfile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewProfile = UIImageView(frame: CGRect(x: 40, y: 200, width: 300, height: 200))
        imageViewProfile.contentMode = .scaleToFill
        imageViewProfile.image = imageProfile
        view.addSubview(imageViewProfile)
        
        
        view.backgroundColor = .systemPurple

    }
}

