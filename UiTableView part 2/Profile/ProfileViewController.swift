//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Ibragim Assaibuldayev on 05.12.2021.
//

import UIKit


class ProfileViewController: UIViewController {
    
    struct Post {
        let author: String
        let description: String
        let image: String
        let likes: Int
        let views: Int
    }
    
    fileprivate var posts: [Post] = [
        Post(author: "Димаш Кудайберген", description: "концерт в Москве", image: "dimash", likes: 150, views: 200),
        Post (author: "Elon Musk", description: "Waiting to launch global wi-fi", image: "starlink", likes: 400, views: 450),
             Post(author: "Мотивация. Спорт", description: "Программа по отжиманиям", image: "pushups", likes: 150, views: 180)]
    
    private lazy var tableViewM: UITableView = {
        let tableViewM = UITableView()
        tableViewM.translatesAutoresizingMaskIntoConstraints = false
        return tableViewM
    }()
    
    private enum CellReuseIdentifiers: String {
        case animal
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let profileView = ProfileHeaderView()
        
        
        view.backgroundColor = .white
        
        view.addSubview(tableViewM)
        
        tableViewM.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableViewM.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableViewM.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableViewM.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        tableViewM.register(PostTableViewCell.self, forCellReuseIdentifier: CellReuseIdentifiers.animal.rawValue)
        
        tableViewM.tableFooterView = UIView()
        
        tableViewM.dataSource = self
        tableViewM.delegate = self
        
        tableViewM.tableHeaderView = profileView
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let indexPath = tableViewM.indexPathForSelectedRow else { return
        }
        tableViewM.deselectRow(at: indexPath, animated: true)
    }
}

extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: PostTableViewCell = tableView.dequeueReusableCell(
            withIdentifier: CellReuseIdentifiers.animal.rawValue,
            for: indexPath
        ) as? PostTableViewCell else {
            fatalError()
        }
        
        // update data
        let data = posts[indexPath.row]
        cell.update(author: data.author, description: data.description , likes: data.likes, views: data.views)
        
        return cell
    }
}

extension ProfileViewController: UITableViewDelegate {
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        print("Did select cell at \(indexPath)")
        
        let data = posts[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let headerView = ProfileHeaderView()
        return headerView
       }
}
