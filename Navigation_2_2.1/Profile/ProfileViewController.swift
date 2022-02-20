//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Ibragim Assaibuldayev on 05.12.2021.
//

import UIKit



class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        view.backgroundColor = .white
        
        let allSidesPadding = UIEdgeInsets(top: 16.0, left: 16.0, bottom: 16.0, right: 16.0)
        let yFrame = allSidesPadding.top * 6
        let widthFrame = view.frame.width
        let heightFrame = view.frame.height
        
        let profileHeader = ProfileHeaderView()
        profileHeader.frame = CGRect(
            x: 0,
            y: yFrame,
            width: widthFrame,
            height: heightFrame
        )
        profileHeader.backgroundColor = .lightGray
        
        view.addSubview(profileHeader)
    }
}
