Pod::Spec.new do |s|
  s.name = 'OpenAPIClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '0.3'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v0.3' }
  s.authors = 'L3vels'
  s.license = {name=MIT, url=https://github.com/l3vels/l3vels-api-client-swift/blob/master/LICENSE}
  s.homepage = 'https://github.com/l3vels/l3vels-api-swift'
  s.summary = 'OpenAPIClient Swift SDK'
  s.description = 'L3vels API sdk'
  s.source_files = 'OpenAPIClient/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
  s.dependency 'RxSwift', '~> 6.2'
end
