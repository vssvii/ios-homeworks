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
        
        view.backgroundColor = .lightGray
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let profileHeader = ProfileHeaderView()
        profileHeader.frame = CGRect(
            x: 0,
            y: 20,
            width: 500.0,
            height: 700.0
        )
         view.addSubview(profileHeader)
        let button = UIButton(frame: CGRect(x: 16, y: 161, width: 335, height: 50))
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4.0
        button.setTitle("Показать статус", for: .normal)
        button.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        button.layer.shadowRadius = 4.0
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        profileHeader.addSubview(button)
    }
    
        @objc func buttonPressed() {
            let alertController = UIAlertController(title: "Статус", message: "Активный отдых!", preferredStyle: .alert)
            let statusAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(statusAction)
            present(alertController, animated: true, completion: nil)
        }
}

