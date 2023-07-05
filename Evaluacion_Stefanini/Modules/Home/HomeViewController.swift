//
//  HomeViewController.swift
//  Evaluacion_Stefanini
//
//  Created Administrator on 04/07/23.
//  Copyright © 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class HomeViewController: UIViewController {
    //MARK: - Protocol Properties
	var presenter: HomePresenterProtocol?
    let defaults = UserDefaults.standard

    //MARK: - Properties
    var dataSource: Results?
    let tabBarVC = UITabBarController()
    private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: "HomeTableViewCell")
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        return tableView
    }()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "E-mail"
        view.backgroundColor = .white
        presenter?.getListEmail()
        setupUI()
        tab()
    }
    
    //MARK: - Methods
    func setupUI(){
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
        
       
    }

}

//MARK: - View Methods
extension HomeViewController: HomeViewProtocol, UITableViewDataSource, UITableViewDelegate {
    func infoEmail(data: Results) {
        dataSource = data
        print("data view:::: \(dataSource)")
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource?.results?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
//        let cell = UITableViewCell()
        guard let resul = dataSource?.results else { return cell }
        cell.configure(model: resul[indexPath.row])
       
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

//MARK: - Private functions
extension HomeViewController {
    func tab(){
        let favoriteVC = presenter?.favoriteVC
        let deleteVC = presenter?.deleteVC
        let spamVC = presenter?.spamVC
        
        let item1 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        let item2 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        let item3 = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
        
        favoriteVC.tabBarItem = item1
        deleteVC.tabBarItem = item2
        spamVC.tabBarItem = item3
        
        tabBarVC.viewControllers = [favoriteVC,deleteVC,spamVC]
        
        self.view.addSubview(tabBarVC.view)
    }
    
}