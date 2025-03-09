//
//  ViewController.swift
//  NetflixClone
//
//  Created by kpc02007-macb3 on 3/9/25.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        // Do any additional setup after loading the view.
        
        let homeView = UINavigationController(rootViewController: HomeViewController())
        let UpcomingView = UINavigationController(rootViewController: UpcomingViewController())
        let SearchView = UINavigationController(rootViewController: SearchViewController())
        let DownloadsView = UINavigationController(rootViewController: DownloadsViewController())
        
        homeView.tabBarItem.image = UIImage(systemName: "house")
        UpcomingView.tabBarItem.image = UIImage(systemName: "play.circle")
        SearchView.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        DownloadsView.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        homeView.title = "Home"
        UpcomingView.title = "Coming Soon"
        SearchView.title = "Top Search"
        DownloadsView.title = "Downloads"
        
        setViewControllers([homeView, UpcomingView, SearchView, DownloadsView], animated: true)
    }


}

