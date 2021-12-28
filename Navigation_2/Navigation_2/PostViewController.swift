//
//  PostViewController.swift
//  Navigation
//
//  Created by Ibragim Assaibuldayev on 08.12.2021.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let feed = FeedViewController()
        feed.title = "Пост"
        
        view.backgroundColor = .systemBlue
        
        let barButton = UIBarButtonItem(title: "Info", style: .done, target: self, action: #selector(didBarButton))
        configureItem()
    }
    
    func configureItem() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                                 target: self,
                                                                 action: #selector(didBarButton))
    }
    
    @objc func didBarButton(sender: Any) {
        let infoView = InfoViewController()
        self.present(infoView, animated: false, completion: nil)
    }
                                    
                                            
}

