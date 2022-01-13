//
//  InfoViewController.swift
//  Navigation_2
//
//  Created by Ibragim Assaibuldayev on 12.01.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .systemRed
        
        let buttonInfo = UIButton(frame: CGRect(x: 130, y: 200, width: 100, height: 50))
        buttonInfo.backgroundColor = .systemGreen
        buttonInfo.setTitle("Info", for: .normal)
        buttonInfo.addTarget(self, action: #selector(buttonInfoAction), for: .touchUpInside)
        
        self.view.addSubview(buttonInfo)
    }
    
    @objc func buttonInfoAction(sender: UIButton!) {
        let alertController = UIAlertController(title: "Cообщение!", message: "Сообщение!", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Сохранить", style: .default, handler:nil)
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .destructive, handler: nil)
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
        
        
        }
    
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

