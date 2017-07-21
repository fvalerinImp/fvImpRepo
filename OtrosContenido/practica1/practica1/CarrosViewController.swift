//
//  CarrosViewController.swift
//  practica1
//
//  Created by Federico Valerin on 5/28/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class CarrosViewController: UIViewController {

    var arrCarros = [clsCarro]()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        AsignarCarros()
        tableView.registerCustomCell(identifier: CarrosTableViewCell.getTableViewCellIdentifier())
        
        self.title = "Carros"
        createAddButton()
        
    }

    func createAddButton(){
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAction))
        navigationItem.rightBarButtonItem = addButton
    }
    
    func addAction() {
        let viewController = storyboard!.instantiateViewController(withIdentifier: AddCarTableViewController.getViewControllerIdentifier()) as! AddCarTableViewController
        
        viewController.delegado = self
        
        navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func AsignarCarros () {
        
        let carro1 = clsCarro(pMarca: "toyota", pDueno: "fvalerin", pColor: "blanco", pAno: 1999)
        let carro2 = clsCarro(pMarca: "chevrolet", pDueno: "alguien", pColor: "azul", pAno: 1978)
        let carro3 = clsCarro(pMarca: "honda", pDueno: "no se", pColor: "rojo", pAno: 2005)
        
        arrCarros = [ carro1, carro2, carro3 ]
        
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

extension CarrosViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCarros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarrosTableViewCell.getTableViewCellIdentifier()) as! CarrosTableViewCell
       
        cell.AsignarCelda( pCarro : arrCarros[ indexPath.row ] )
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
        
    }
}

extension CarrosViewController: clsAddCarProtocol {
    func agregarObjeto( pObjeto: clsCarro ) {
        self.arrCarros.append( pObjeto )
        tableView.reloadData()
    }
    
}


