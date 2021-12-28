//
//  InfoViewController.swift
//  Navigation_2
//
//  Created by Ibragim Assaibuldayev on 26.12.2021.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .systemGray
        
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = .systemCyan
        button.setTitle("Alert", for: .normal)
        button.addTarget(self, action: #selector(alertAction), for: .touchUpInside)
    }
    
    
    @objc func alertAction() {
        let alert = UIAlertController(title: "Да", message: "Вы уверены?", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
        }))
        alert.addAction(UIAlertAction(title: "Sign out",
                                      style: UIAlertAction.Style.destructive,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
