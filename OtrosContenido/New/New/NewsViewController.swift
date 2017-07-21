//
//  NewsViewController.swift
//  New
//
//  Created by Federico Valerin on 5/18/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    
    var newsArray: [clsNew]?
    
    @IBOutlet weak var tableNewView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

    func createAddButton() {
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAction))
        navigationItem.rightBarButtonItem = addButton
    }
    
    func addAction () {
        
    }
    
    
}

extension NewsViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let news = newsArray else {
            return 0
        }
        
        return newsArray!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableNewView.dequeueReusableCell(withIdentifier: NewsTableViewCell.getTableViewCellIdentifier()) as! NewsTableViewCell
        
        cell.setupCell(poNews: (newsArray?[ indexPath.row ])!)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
        
    }
}








