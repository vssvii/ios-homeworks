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
        
        view.backgroundColor = .white
        
        let profileHeader = ProfileHeaderView()
        profileHeader.backgroundColor = .lightGray
        
        view.addSubview(profileHeader)
        
        profileHeader.translatesAutoresizingMaskIntoConstraints = false
        profileHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        profileHeader.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        profileHeader.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        profileHeader.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 220).isActive = true
    }
}

