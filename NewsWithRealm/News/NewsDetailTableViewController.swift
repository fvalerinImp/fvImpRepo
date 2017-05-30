//
//  NewsDetailTableViewController.swift
//  News
//
//  Created by Cesar Brenes on 5/23/17.
//  Copyright © 2017 César Brenes Solano. All rights reserved.
//

import UIKit


protocol NewsDetailTableViewControllerDelegate: class {
    func addNews(news:News)
}

class NewsDetailTableViewController: UITableViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var descriptionTextField: UITextView!
    
    weak var delegate: NewsDetailTableViewControllerDelegate?    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSaveNews()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addSaveNews() {
        let saveAction = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveNewsAction))
        navigationItem.rightBarButtonItem = saveAction
        
    }
    
    func saveNewsAction() {
  //      let news = News(titleNews: titleTextField.text!, descriptionNews: descriptionTextField.text!, createdAt: Date())
        
//        delegate?.addNews(news: news)
        
        
        
        
    }
    
    
}
