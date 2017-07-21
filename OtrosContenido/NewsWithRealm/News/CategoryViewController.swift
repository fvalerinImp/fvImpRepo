//
//  CategoryViewController.swift
//  News
//
//  Created by Cesar Brenes on 5/18/17.
//  Copyright © 2017 César Brenes Solano. All rights reserved.
//

import UIKit
import RealmSwift

class CategoryViewController: UIViewController {

    var categories: Results<Category>?
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeCategories()
        tableView.registerCustomCell(identifier: CategoryTableViewCell.getTableViewCellIdentifier())
        self.title = "Categorías"
    }
    
    
    func initializeCategories(){
//        let economyCategory = Category(name: "Economía", image: "economy", type:.economy)
//        let sportsCategory = Category(name: "Sports", image: "sports", type: .sports)
//        let technologyCategory = Category(name: "Tecnología", image: "technology", type: .technology)
//        let incidentCategory = Category(name: "Sucesos", image: "incident", type: .incidents)
//        categories = [economyCategory,sportsCategory,technologyCategory,incidentCategory]
    
        categories = RealmManager.getAllCategories()
    }
    
}


extension CategoryViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let categories = categories else {
            return 0
        }
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.getTableViewCellIdentifier()) as! CategoryTableViewCell
        cell.setupCell(category: (categories![indexPath.row]))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newsViewController = storyboard?.instantiateViewController(withIdentifier: NewsViewController.getViewControllerIdentifier()) as! NewsViewController
//        newsViewController.news = categories[indexPath.row].newsArray
//        newsViewController.categoryType = categories[ indexPath.row ].type
//        newsViewController.delegate = self
        
        newsViewController.categoryType = categories![ indexPath.row ].type
    
        navigationController?.pushViewController(newsViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}

//extension CategoryViewController:NewsProtocol {
//    func addNews(news:[News], categoryType:CategoryType) {
//        let index = categories.index {$0.type == categoryType}
//        if let indexUnwraped = index {
//            let categoryToUpdate = categories[ indexUnwraped ]
//            categoryToUpdate.newsArray = news
//            categories[indexUnwraped] = categoryToUpdate
//        }
//    }
//}



