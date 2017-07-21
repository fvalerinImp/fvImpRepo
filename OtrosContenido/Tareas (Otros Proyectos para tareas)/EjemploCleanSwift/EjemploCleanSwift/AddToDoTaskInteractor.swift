//
//  AddToDoTaskInteractor.swift
//  EjemploCleanSwift
//
//  Created by Federico Valerin on 6/6/17.
//  Copyright (c) 2017 Federico Valerin. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol AddToDoTaskInteractorInput{
    func doSomething(request: AddToDoTask.Request)
}

protocol AddToDoTaskInteractorOutput{
    func presentSomething(response: AddToDoTask.Response)
}

class AddToDoTaskInteractor: AddToDoTaskInteractorInput{
    var output: AddToDoTaskInteractorOutput!
    var worker: AddToDoTaskWorker!
    
    // MARK: Business logic
    
    func doSomething(request: AddToDoTask.Request){
        // NOTE: Create some Worker to do the work
        
        worker = AddToDoTaskWorker()
        worker.doSomeWork()
        
        // NOTE: Pass the result to the Presenter
        
        let response = AddToDoTask.Response()
        output.presentSomething(response: response)
    }
}
