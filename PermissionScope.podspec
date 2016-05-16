Pod::Spec.new do |s|
  s.name = 'PermissionScope'
  s.version = '1.0.2'
  s.license = 'MIT'
  s.summary = 'A Periscope-inspired way to ask for iOS permissions'
  s.homepage = 'https://github.com/nickoneill/PermissionScope'
  s.social_media_url = 'https://twitter.com/objctoswift'
  s.authors = { "Nick O'Neill" => 'nick.oneill@gmail.com' }
  s.source = { :git => 'https://github.com/nickoneill/PermissionScope.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'PermissionScope/*.swift'
  
  # Subspecs to only add the desired frameworks
  s.subspec 'AddressBook' do |ab|
    ab.framework = 'AddressBook'
  end
  
  s.subspec 'AVFoundation' do |av|
    av.framework = 'AVFoundation'
  end
  
  s.subspec 'Photos' do |ph|
    ph.framework = 'Photos'
  end
  
  s.subspec 'EventKit' |ek|
    ek.framework = 'EventKit'
  end
  
  s.subspec 'CoreBluetooth' do |cb|
    cb.framework = 'CoreBluetooth'
  end
  
  s.subspect 'CoreMotion' do |cm|
    cm.framework = 'CoreMotion'
  end

  s.requires_arc = true
end
