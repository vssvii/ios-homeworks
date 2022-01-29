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
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let profileHeader = ProfileHeaderView()
        profileHeader.backgroundColor = .lightGray
        view.addSubview(profileHeader)
        profileHeader.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        
        let profile = UIImageView()
            profile.image = UIImage(named: "profile")
            profile.layer.borderColor = UIColor.white.cgColor
            profile.clipsToBounds = true
            profile.layer.borderWidth = 3
            profile.layer.cornerRadius = 50
            profileHeader.addSubview(profile)
            profile.translatesAutoresizingMaskIntoConstraints = false
            
        profile.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16.0).isActive = true
        profile.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.0).isActive = true
        profile.widthAnchor.constraint(equalToConstant: 110).isActive = true
        profile.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        let button = UIButton(frame: CGRect(x: 16, y: 161, width: 335, height: 50))
        button.backgroundColor = .blue
        button.setTitle("Показать статус", for: .normal)
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        profileHeader.addSubview(button)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.topAnchor.constraint(equalTo: profile.topAnchor, constant: 16).isActive = true
//        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
//        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16).isActive = true

        let label = UILabel()
        label.text = "Ibragim"
        label.font = .boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        profileHeader.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -27.0).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 120).isActive = true
        label.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
//        let secondLabel = UILabel()
//            secondLabel.textAlignment = .center
//            secondLabel.font = .boldSystemFont(ofSize: 14)
//        secondLabel.textColor = .gray
//        secondLabel.text = "Статус"
//            profileHeader.addSubview(secondLabel)
//        secondLabel.translatesAutoresizingMaskIntoConstraints = false
//        secondLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        secondLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        secondLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        secondLabel.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: -32).isActive = true
        
        
//        let statusTextField = UITextField(frame:CGRect(x: 112, y: 150, width: 80, height: 40))
        let statusTextField = UITextField()
        statusTextField.backgroundColor = .white
        statusTextField.textColor = .black
        statusTextField.font = .boldSystemFont(ofSize: 15)
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.addTarget(self, action: #selector(statusTextChanged(_:)), for: .editingChanged)
        statusTextField.keyboardAppearance = .default
        statusTextField.keyboardType = .default
        profileHeader.addSubview(statusTextField)
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        statusTextField.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -16).isActive = true
        statusTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 112).isActive = true
        statusTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        statusTextField.heightAnchor.constraint(equalTo: statusTextField.heightAnchor, constant: 40).isActive = true
    }
    
    private var statusText: String?
    
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = textField.text
    }
    
    
    @objc func buttonPressed() {
        let alertController = UIAlertController(title: "Статус", message: statusText, preferredStyle: .alert)
        let statusAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(statusAction)
        present(alertController, animated: true, completion: nil)
    }
}

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, trailing: NSLayoutXAxisAnchor) {
        translatesAutoresizingMaskIntoConstraints = false

        topAnchor.constraint(equalTo: top).isActive = true
        leadingAnchor.constraint(equalTo: leading).isActive = true
        bottomAnchor.constraint(equalTo: bottom).isActive = true
        trailingAnchor.constraint(equalTo: trailing).isActive = true
    }
}
// 1 проблема: Когда подключаю Auto Layout к button, то приложение ломается при нажатии вкладки "Профиль". Из-за чего это может быть?
// 2 проблема: Если сделать statusTextField с frame, то видны буквы, которые я пишу, а если сделать с Auto Layout, то буквы не видны. но при нажатии на кнопку, показывает написанное. Как можно сделать буквы видимыми с Auto Layout?
// 3 проблема: Как можно сделать, чтобы текст secondLabel брал данные из statusTextField, если я не могу вписать secondLabel.text в функцию statusTextChanged?
