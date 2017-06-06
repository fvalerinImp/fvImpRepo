//
//  DogsViewController.swift
//  TareaDogsSinRealm
//
//  Created by Federico Valerin on 5/28/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit
import RealmSwift

class DogsViewController: UIViewController {

//    var arrPerros = [clsDog]()
    var lstPerros : Results<clsDog>?
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CargarPerros()
        tableView.registerCustomCell(identifier: DogsTableViewCell.getTableViewCellIdentifier())
        
        self.title = "Perros"
        createAddButton()
    }
    
    func CargarPerros() {
        
//        let perro1 = clsDog(pName: "RinTonTon", pImageName: "perro1", pColor: "azul", pOrden: 1)
//        let perro2 = clsDog(pName: "Lazo", pImageName: "perro2", pColor: "morado", pOrden: 2)
//        let perro3 = clsDog(pName: "ScoobyDoo", pImageName: "perro3", pColor: "anaranjado", pOrden: 3)
//        
//        arrPerros = [ perro1, perro2, perro3 ]
//
        lstPerros = RealmManager.ObtenerPerros()
        
    }
    
    func createAddButton(){
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAction))
        navigationItem.rightBarButtonItem = addButton
    }
    
    func addAction() {
        let viewController = storyboard!.instantiateViewController(withIdentifier: AddDogTableViewController.getViewControllerIdentifier()) as! AddDogTableViewController
        
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

extension DogsViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return (lstPerros?.count)!
        guard let lperros = lstPerros else {
            return 0
        }
        return lperros.count

        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DogsTableViewCell.getTableViewCellIdentifier()) as! DogsTableViewCell
        
        cell.AsignarCelda(pPerro: (lstPerros?[ indexPath.row ])! )
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 250
        
    }
}

extension DogsViewController: clsAddDogProtocol {
    func agregarObjeto( pObjeto: clsDog ) {
        
        var nContador = 0
        if lstPerros != nil {
            if lstPerros?.count != nil {
                nContador = (lstPerros?.count)!
            }
        }
    //    nContador = nContador + 1
        
        pObjeto.Orden = nContador + 1
        //self.arrPerros.append( pObjeto )
        RealmManager.addObjectToRealm(realmObject: pObjeto)
        tableView.reloadData()
    }
    
}

