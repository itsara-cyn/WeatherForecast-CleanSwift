# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

def default_pods
  pod 'SDWebImage'
  pod 'Moya'
  pod 'MBProgressHUD'
  pod 'RxSwift'
  pod 'RxCocoa'
  pod 'DZNEmptyDataSet'
  pod 'IQKeyboardManagerSwift'
end

target 'WeatherForecast' do

  use_frameworks!
  default_pods

  target 'WeatherForecastTests' do
    inherit! :search_paths
  end

  target 'WeatherForecastUITests' do
    inherit! :search_paths
  end

end
