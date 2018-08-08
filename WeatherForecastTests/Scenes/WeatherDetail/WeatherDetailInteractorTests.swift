//
//  WeatherDetailInteractorTests.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 6/8/18.
//  Copyright (c) 2018 ItsaraChai. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import WeatherForecast
import XCTest

class WeatherDetailInteractorTests: XCTestCase
{
  // MARK: Subject under test
  
  var sut: WeatherDetailInteractor!
  
  // MARK: Test lifecycle
  
  override func setUp()
  {
    super.setUp()
    setupWeatherDetailInteractor()
  }
  
  override func tearDown()
  {
    super.tearDown()
  }
  
  // MARK: Test setup
  
  func setupWeatherDetailInteractor()
  {
    sut = WeatherDetailInteractor()
  }
  
  // MARK: Test doubles
  
  class WeatherDetailPresentationLogicSpy: WeatherDetailPresentationLogic
  {
    var presentWeatherCalled = false

    func presentWeather(response: WeatherDetail.Response) {
        presentWeatherCalled = true
    }
  }
  
  // MARK: Tests
  
  func testDoSomething()
  {
    // Given
    let spy = WeatherDetailPresentationLogicSpy()
    sut.presenter = spy
    let request = WeatherDetail.Request.GetWeather()
    
    // When
    sut.getWeather(request: request)
    
    // Then
    XCTAssertTrue(spy.presentWeatherCalled, "doSomething(request:) should ask the presenter to format the result")
  }
}
