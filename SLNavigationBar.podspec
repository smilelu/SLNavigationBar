Pod::Spec.new do |s|
  s.name             = 'SLNavigationBar'
  s.version          = '0.1.0'
  s.summary          = 'This is a custom NavigationBar.'


  s.description      = <<-DESC
                          SLNaviationBar is a custom NavigationBar.
                          DESC

  s.homepage         = 'https://github.com/smilelu/SLNavigationBar'
  s.license          = 'MIT'
  s.author           = { 'Smilelu' => 'hmilyt@foxmail.com'  }
  s.source           = { :git => 'https://github.com/smilelu/SLNavigationBar.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'SLNavigationBar/**/*.{m,h}'

  s.resource_bundles = {
    'SLNavigationBar' => ['Assets/*.png']
  }

  s.frameworks = 'UIKit'
  s.dependency 'Masonry'

end
