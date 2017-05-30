//
//  CatsListViewController.swift
//  Quiz4Gatos
//
//  Created by Federico Valerin on 5/30/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit
import RealmSwift

class CatsListViewController: UIViewController {

    //var arrCats = [clsCat]()
    var lstGatos : Results<clsCat>?
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CargarGatos()
        tableView.registerCustomCell(identifier: CatCustomTableViewCell.getTableViewCellIdentifier())
        
        self.title = "Cats"
        createAddButton()
    }
    
    func CargarGatos() {
        
 //       let gato = clsCat(pNombre: "Minino")
        
   //     arrCats = [gato]
        
        lstGatos = RealmManager.ObtenerGatos()
    }

    func createAddButton(){
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAction))
        navigationItem.rightBarButtonItem = addButton
    }
    
    func addAction() {
        let viewController = storyboard!.instantiateViewController(withIdentifier: AddCatViewController.getViewControllerIdentifier()) as! AddCatViewController
        
        viewController.delegado = self
        
        navigationController?.pushViewController(viewController, animated: true)
        
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

extension CatsListViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return (arrCats.count)
        guard let lgatos = lstGatos else {
            return 0
        }
        return lgatos.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CatCustomTableViewCell.getTableViewCellIdentifier()) as! CatCustomTableViewCell
        
        cell.AsignarCelda(pGato: (lstGatos?[ indexPath.row ])! )
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 60
        
    }
}

extension CatsListViewController: clsAddCatProtocol {
    func agregarObjeto( pObjeto: clsCat ) {
        
//        var nContador = 0
//        if lstGatos != nil {
//            if lstGatos?.count != nil {
//                nContador = (lstGatos?.count)!
//            }
//        }
        
//        pObjeto.Orden = nContador + 1
  
        RealmManager.addObjectToRealm(realmObject: pObjeto)
    
//        arrCats.append( pObjeto )
        tableView.reloadData()
    }
    
}







