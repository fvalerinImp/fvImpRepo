//
//  ToDoTasksListPresenter.swift
//  EjemploCleanSwift
//
//  Created by Federico Valerin on 6/6/17.
//  Copyright (c) 2017 Federico Valerin. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol ToDoTasksListPresenterInput{
    //func presentSomething(response: ToDoTasksList.Response)
    func responseTestInformation(response: ToDoTasksList.TestInformation.Response)
    func responseTareas(response:ToDoTasksList.clsDataSource.Response)
    func responseDataSource(response:ToDoTasksList.clsDataSource.Response)
}

protocol ToDoTasksListPresenterOutput: class{
   // func displaySomething(viewModel: ToDoTasksList.ViewModel)
    func displayTestInformation(viewModel: ToDoTasksList.TestInformation.ViewModel)
    
    func displayTareas(viewModel: ToDoTasksList.clsDataSource.ViewModel)
}

class ToDoTasksListPresenter: ToDoTasksListPresenterInput{
    weak var output: ToDoTasksListPresenterOutput!

    func responseTestInformation(response: ToDoTasksList.TestInformation.Response) {
        let viewModel = ToDoTasksList.TestInformation.ViewModel(numberText: "\(response.number)")
        output.displayTestInformation(viewModel: viewModel)
    }
    
    func responseTareas(response:ToDoTasksList.clsDataSource.Response) {
        
        let VM = ToDoTasksList.clsDataSource.ViewModel(arrTareasViewModel: response.arrTareas )
        output.displayTareas(viewModel: VM)
        
    }
    
    func responseDataSource(response:ToDoTasksList.clsDataSource.Response) {
        let viewModel = ToDoTasksList.clsDataSource.ViewModel(arrTareasViewModel: response.arrTareas.map{ToDoTasksList.TaskModelCell(text: $0.text, counter: "\($0.counter)")})
        output.displayDataSource(viewModel: viewModel)
    }

    
    
    
    // MARK: Presentation logic
    
//    func presentSomething(response: ToDoTasksList.Response){
//        // NOTE: Format the response from the Interactor and pass the result back to the View Controller
//        
//        let viewModel = ToDoTasksList.ViewModel()
//        output.displaySomething(viewModel: viewModel)
//    }
}
