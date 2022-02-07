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
            y: 0,
            width: 428.0,
            height: 926.0
        )
        
         view.addSubview(profileHeader)
        
        let button = UIButton(frame: CGRect(x: 16, y: 161, width: 296, height: 50))
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4.0
        button.setTitle("Показать статус", for: .normal)
        button.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        button.layer.shadowRadius = 4.0
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        profileHeader.addSubview(button)
        
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
            textField.center = CGPoint(x: 220, y: 140)
            textField.textAlignment = .center
            textField.font = .boldSystemFont(ofSize: 15)
            textField.textColor = .black
            textField.backgroundColor = .white
            textField.layer.borderColor = UIColor.black.cgColor
            textField.layer.borderWidth = 1
            textField.layer.cornerRadius = 12
            textField.addTarget(self, action: #selector(statusTextChanged(_:)), for: .editingChanged)
        profileHeader.addSubview(textField)
    }
    
        @objc func buttonPressed() {
            
            let alertController = UIAlertController(title: "Статус", message: statusText, preferredStyle: .alert)
            let statusAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(statusAction)
            present(alertController, animated: true, completion: nil)
        }
    
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = textField.text ?? "Error"
    }
    private var statusText:String = ""
}
