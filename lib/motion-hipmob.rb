require 'motion-require'

Motion::Require.all(Dir.glob(File.expand_path('motion-hipmob/*.rb', __FILE__)))

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  app.vendor_project(File.expand_path(File.join(File.dirname(__FILE__), '../vendor/hipmob.framework')), :static, products: ['hipmob'])
  app.resources_dirs << File.join(File.dirname(__FILE__), '../vendor/hipmob.framework/Resources')
  app.frameworks += ['CoreData', 'Security', 'CoreTelephony', 'UIKit', 'AVFoundation', 'CoreGraphics', 'Foundation', 'CFNetwork', 'libicucore.dylib']
end