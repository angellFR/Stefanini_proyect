//
//  TabControllerViewController.swift
//  Evaluacion_Stefanini
//
//  Created by Administrator on 04/07/23.
//

import UIKit

class TabControllerViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabs()
        view.backgroundColor = .white
        
        self.tabBar.barTintColor = .white
        self.tabBar.tintColor = .blue
        self.tabBar.unselectedItemTintColor = .black
        self.selectedIndex = 0
        
        self.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    private func setupTabs(){
        
        let home = self.createNav(whit: "Home", and: UIImage(systemName: "house"), vc: HomeRouter.createModule())
        let favoriteCV = self.createNav(whit: "Favorito", and: UIImage(systemName: "heart"), vc: FavoriteMessageRouter.createModule())
        let spamCV = self.createNav(whit: "Spam", and: UIImage(systemName: "xmark.bin"), vc: SpamMessageRouter.createModule())
        let deleteCV = self.createNav(whit: "Papelera", and: UIImage(systemName: "trash"), vc: DeleteMessageRouter.createModule())
        
    self.setViewControllers([home,favoriteCV,spamCV,deleteCV], animated: true)

}

private func createNav(whit title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
    let nav = UINavigationController(rootViewController: vc)
    
    nav.tabBarItem.title = title
    nav.tabBarItem.image = image
    
    nav.viewControllers.first?.navigationItem.title = title + " Controller"
    nav.viewControllers.first?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Button", style: .plain, target: nil, action: nil)
    return nav
    
}

}
