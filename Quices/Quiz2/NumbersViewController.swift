//
//  NumbersViewController.swift
//  Quiz2
//
//  Created by Federico Valerin on 5/18/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class NumbersViewController: UIViewController {

    var anNumeros = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func CargarArreglo() {
        
        for nIdx in 1...100 {
            anNumeros.append(nIdx % 2)
        }

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
