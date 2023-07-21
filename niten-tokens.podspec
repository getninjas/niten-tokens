Pod::Spec.new do |s|
  s.name             = 'niten-tokens'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Niten Tokens'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/getninjas/niten-tokens'
  s.author           = { 'Lucas Siqueira' => 'lucas.siqueira@getninjas..com.br' }
  s.source           = { :git => 'git@github.com:getninjas/niten-tokens.git', :tag => s.version.to_s }
  s.summary          = "Niten Tokens iOS Lib"

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.source_files = 'build/ios/**/*'
  s.exclude_files = [ 'build/ios/DesignTokensFont.swift' ]
  s.subspec "Pod" do |ss|
    ss.resource = "niten-tokens.podspec"
    ss.header_dir = "Pod"
  end
end
