//
//  PrimosViewController.swift
//  proyPrimos1
//
//  Created by Federico Valerin on 5/21/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class PrimosViewController: UIViewController {
    
    @IBOutlet weak var TableView: UITableView!
    
    var dataSource = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CargarNumerosPrimos()
        
        TableView.registerCustomCell(identifier: PrimosTableViewCell.getTableViewCellIdentifier())
        
        // Do any additional setup after loading the view.
    }
    
    func CargarNumerosPrimos(){
        var Raiz:Int
        var Ultimo:Int?
        
        dataSource.append(1)
        dataSource.append(2)
        dataSource.append(3)
        
        for valor in 4...1000 {
            Raiz = Int(sqrt(Double(valor)))
            // Busca si la raiz cuadrada esta como numero primo, o si no el sigte numero menor
            // a esa raiz cuadrada, o sino el menor sigte, etc, etc
            var bSeguir = true
            while (bSeguir) {
                if (Raiz == 1) {
                    bSeguir = false
                }
                else if (dataSource.index(of: Raiz) != nil) {
                    bSeguir = false
                    Ultimo = dataSource.index(of: Raiz)!
                }
                else {
                    Raiz = Raiz - 1
                }
            }
            if (Ultimo == nil) {
                
            }
            else if (Ultimo! >= 1) {
                var AlgunoLoDivide = false
                var Index2 = 1
                while (Index2 <= Ultimo! && AlgunoLoDivide == false) {
                    if (valor % dataSource[Index2] == 0) { // No es primo
                        AlgunoLoDivide = true
                    }
                    Index2 = Index2 + 1
                }
                if (AlgunoLoDivide == false) {
                    dataSource.append(valor)
                }
            } // else
            
            
        } // for 4...1000
        
        /*dataSource.append(1)
        dataSource.append(2)
        dataSource.append(3)
        dataSource.append(5)
        */
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

} // cls

extension PrimosViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PrimosTableViewCell.getTableViewCellIdentifier()) as! PrimosTableViewCell
        
        cell.setupCell( pnNumPrimo: dataSource[indexPath.row] )
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 30
        
    }
    
} // extension





