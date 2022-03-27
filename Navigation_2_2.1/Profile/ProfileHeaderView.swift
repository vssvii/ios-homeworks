//
//  ProfileHeaderView.swift
//  Navigation_2
//
//  Created by Ibragim Assaibuldayev on 18.01.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let profileController = ProfileViewController()
    
    override func draw(_ rect: CGRect) {
        guard let ctx = UIGraphicsGetCurrentContext() else {
            return
        }
        
        let allSidesPadding = UIEdgeInsets(top: 16.0, left: 16.0, bottom: 16.0, right: 16.0)
        
        let xProfile = allSidesPadding.left
        let yProfile = allSidesPadding.top
        
        let profile = UIImageView(frame: CGRect(x: xProfile, y: yProfile, width: 100, height: 100))
                profile.image = UIImage(named: "profile")
                profile.layer.borderColor = UIColor.white.cgColor
                profile.clipsToBounds = true
                profile.layer.borderWidth = 3
                profile.layer.cornerRadius = 50
                self.addSubview(profile)
        
        let xLabel = allSidesPadding.left + profile.frame.minX + allSidesPadding.left
        let yLabel = allSidesPadding.top + 11
        let widthLabel = frame.width - xLabel - allSidesPadding.right
        
        let label = UILabel(frame: CGRect(x: xLabel, y: yLabel, width: widthLabel, height: 20))
//        let label = PaddingLabel(withInsets: 16.0, 16.0, 16.0, 16.0)
        label.font = .boldSystemFont(ofSize: 16)
        label.text = "Ibragim"
        label.textColor = .black
        label.textAlignment = .center
        self.addSubview(label)
        
        let xSecondLabel = allSidesPadding.left + profile.frame.minX + allSidesPadding.left
        let ySecondLabel = allSidesPadding.top + label.frame.maxY + 11
        let widthSecondLabel = frame.width - xSecondLabel - allSidesPadding.right
        
        
        let secondLabel = UILabel(frame: CGRect(x: xSecondLabel, y: ySecondLabel, width: widthSecondLabel, height: 21))
            secondLabel.textAlignment = .center
            secondLabel.text = "Напишите статус"
            secondLabel.font = .boldSystemFont(ofSize: 14)
            secondLabel.textColor = .gray
        self.addSubview(secondLabel)
        
        let xTextField = allSidesPadding.left + profile.frame.maxX
        let yTextField = allSidesPadding.top + 11 + secondLabel.frame.minY
        let widthTextField = self.frame.width - allSidesPadding.left - profile.frame.maxX - allSidesPadding.right
        
        let textField = UITextField(frame: CGRect(x: xTextField, y: yTextField, width: widthTextField, height: 21))
            textField.textAlignment = .center
            textField.font = .boldSystemFont(ofSize: 15)
            textField.textColor = .black
            textField.backgroundColor = .white
            textField.layer.borderColor = UIColor.black.cgColor
            textField.layer.borderWidth = 1
            textField.layer.cornerRadius = 12
            textField.addTarget(self, action: #selector(statusTextChanged(_:)), for: .editingChanged)
        self.addSubview(textField)
        
        let xButton = allSidesPadding.left
        let yButton = allSidesPadding.top + yLabel + ySecondLabel + 27.0 + 34.0
        let widthButton = frame.width - allSidesPadding.left - allSidesPadding.right
        
        let button = UIButton(frame: CGRect(x: xButton, y: yButton, width: widthButton, height: 50))
        button.backgroundColor = .blue
        button.layer.cornerRadius = 4.0
        button.setTitle("Показать статус", for: .normal)
        button.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        button.layer.shadowRadius = 4.0
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        self.addSubview(button)
    }
    
    @objc func buttonPressed() {
        let alertController = UIAlertController(title: "Статус", message: statusText, preferredStyle: .alert)
        let statusAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(statusAction)
        profileController.present(alertController, animated: true, completion: nil)
    }
    
    @objc func statusTextChanged(_ textField: UITextField) {
    statusText = textField.text ?? "Error"
    }
    
    private var statusText:String = ""
}
