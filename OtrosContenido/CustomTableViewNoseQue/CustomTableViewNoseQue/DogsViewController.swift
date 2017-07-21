//
//  DogsViewController.swift
//  CustomTableViewNoseQue
//
//  Created by Federico Valerin on 5/16/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class DogsViewController: UIViewController {

    var dogs = [Dog]()
    
    
    @IBOutlet weak var DogTableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func llenarArreglo()  {
        let dog1 = [keyName:""]
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

extension DogsViewController:UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "")
        return cell!
    }
    
}
