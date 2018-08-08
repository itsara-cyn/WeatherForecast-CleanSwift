//
//  LocationSearchConfigurator.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 6/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//

class LocationSearchConfigurator {
    
    static let sharedInstance = LocationSearchConfigurator()
    
    private init() {}
    
    func configure(viewController: LocationSearchViewController) {
        let router = LocationSearchRouter()
        router.viewController = viewController
        
        let presenter = LocationSearchPresenter()
        presenter.viewController = viewController
        
        let interactor = LocationSearchInteractor()
        interactor.presenter = presenter
        
        viewController.interactor = interactor
        viewController.router = router
    }

    
//    static let sharedInstance = LocationSearchConfigurator()
//
//    private init() {}
//
//    func configure(viewController: LocationSearchViewController) {
//        let router = LocationSearchRouter()
//        router.viewController = viewController
//
//        let presenter = LocationSearchPresenter()
//        presenter.output = viewController
//        
//        let interactor = LocationSearchInteractor()
//        interactor.output = presenter
//
//        viewController.output = interactor
//        viewController.router = router
//    }
}
