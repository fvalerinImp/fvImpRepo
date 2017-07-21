//
//  CategoryViewController.swift
//  New
//
//  Created by Federico Valerin on 5/18/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    var categories = [clsCategory]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeCategories()
        tableView.registerCustomCell(identifier: CategoryTableViewCell.getTableViewCellIdentifier())
     
        self.title = "Categories"
        
        // Do any additional setup after loading the view.
    }
    
    func initializeCategories(){
        
        let economyCategory = clsCategory(name: "Economia", image:"economy")
        let sportsCategory = clsCategory(name: "Deportes", image:"sports")
        let technologyCategory = clsCategory(name: "Tecnologia", image:"technology")
        let incidentCategory = clsCategory(name: "Sucesos", image:"incident")
        
        categories = [economyCategory, sportsCategory, technologyCategory, incidentCategory]
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CategoryViewController : UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.getTableViewCellIdentifier()) as! CategoryTableViewCell
        
            cell.setupCell(category: categories[indexPath.row])
        
            return cell
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
            return 100
    
    }
   /*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newsViewController = storyboard?.instantiateViewController(withIdentifier:
            NewsViewController.getViewControllerIdentifier()) as! NewsViewController
        
        newsViewController.news = categories[ indexPath.row ].newsArray
        navigationController?.pushViewController(newsViewController, animated: true)
        
    }
*/
}

