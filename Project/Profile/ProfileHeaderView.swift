//
//  ProfileHeaderView.swift
//  Navigation_2
//
//  Created by Ibragim Assaibuldayev on 18.01.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private var statusText: String?
    
    var statusLabel: UILabel = {
       let statusLabel = UILabel()
        statusLabel.textAlignment = .center
        statusLabel.font = .boldSystemFont(ofSize: 14)
        statusLabel.textColor = .gray
        statusLabel.text = "Напишите статус"
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        return statusLabel
    }()
    
    override func draw(_ rect: CGRect) {
        guard let ctx = UIGraphicsGetCurrentContext() else {
            return
        }
        
        let avatarImageView = UIImageView()
        avatarImageView.image = UIImage(named: "profile")
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.cornerRadius = 50
        self.addSubview(avatarImageView)
        
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16.0).isActive = true
        avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16.0).isActive = true
        avatarImageView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        let setStatusButton = UIButton()
        setStatusButton.backgroundColor = .blue
        setStatusButton.setTitle("Показать статус", for: .normal)
        setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        self.addSubview(setStatusButton)
        
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        setStatusButton.topAnchor.constraint(equalTo: avatarImageView.safeAreaLayoutGuide.bottomAnchor, constant: 16.0).isActive = true
        setStatusButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16.0).isActive = true
        setStatusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16.0).isActive = true
        setStatusButton.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        
        let fullNameLabel = UILabel()
           fullNameLabel.text = "Ibragim"
           fullNameLabel.font = .boldSystemFont(ofSize: 18)
           fullNameLabel.textAlignment = .center
           self.addSubview(fullNameLabel)
        
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        fullNameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: -27.0).isActive = true
        fullNameLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        fullNameLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        fullNameLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
        fullNameLabel.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        let statusTextField = UITextField()
        statusTextField.backgroundColor = .white
        statusTextField.textColor = .black
        statusTextField.font = .boldSystemFont(ofSize: 15)
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.addTarget(self, action: #selector(statusTextChanged(_:)), for: .editingChanged)
        statusTextField.keyboardAppearance = .default
        statusTextField.keyboardType = .default
        self.addSubview(statusTextField)
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        statusTextField.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -16.0).isActive = true
        statusTextField.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 16.0).isActive = true
        statusTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16.0).isActive = true
        statusTextField.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        
        self.addSubview(statusLabel)
        
        statusLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor, constant: 16).isActive = true
        statusLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        statusLabel.bottomAnchor.constraint(equalTo: statusTextField.bottomAnchor).isActive = true
        
        let closeButton = UIButton()
        closeButton.setTitle("Закрыть", for: .normal)
        closeButton.backgroundColor = .systemRed
        closeButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        closeButton.layer.shadowRadius = 3
        closeButton.layer.shadowColor = UIColor.black.cgColor
        closeButton.layer.shadowOpacity = 0.9
        self.addSubview(closeButton)
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        closeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 16).isActive = true
        closeButton.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        closeButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    
    @objc func statusTextChanged(_ textField: UITextField) -> String? {
        statusText = textField.text
        return statusText
    }
    
    @objc func buttonPressed() {
        statusLabel.text = statusText
    }
}

