//
//  EnterNumberViewController.swift
//  proyQuiz3
//
//  Created by Federico Valerin on 5/23/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class EnterNumberViewController: UIViewController {

    var arreglo = [String]()
    
    @IBOutlet weak var tablaView: UITableView!
    
    @IBOutlet weak var textoField: UITextField!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tablaView.registerCustomCell(identifier: NumberCustomCell.getTableViewCellIdentifier())
        
        arreglo = ["hola","2"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func agregarAction(_ sender: Any) {
        
        arreglo.append(textoField.text!)
        
        tablaView.reloadData()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

} // cls

extension EnterNumberViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NumberCustomCell.getTableViewCellIdentifier()) as! NumberCustomCell
        cell.InitCelda(psTexto: arreglo[ indexPath.row ])
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 90
        
    }
    
} // extension


