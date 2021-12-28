//
//  FeedViewController.swift
//  Navigation
//
//  Created by Ibragim Assaibuldayev on 05.12.2021.
//

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .systemGreen
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = .systemPurple
        button.setTitle("Post View", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let postViewController = PostViewController()
        postViewController.title = "Пост"
        self.present(postViewController, animated: true, completion: nil)
        
        postViewController.navigationItem.rightBarButtonItem  = UIBarButtonItem(title: "Back",
                                                                                style: .done,
                                                                                target: self,
                                                                                action: nil)
        
    }
    
    struct Post {
    let title: String
        
    }
    
    var post = Post(title: "Пост")
}

