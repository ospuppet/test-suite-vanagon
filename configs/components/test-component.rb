# frozen_string_literal: true

component 'test-component' do |pkg, settings, _platform|
  version = '1.0.0'
  pkg.load_from_json('configs/components/test-component.json')

  pkg.provides 'test-component', version

  pkg.build_requires 'ruby'
  pkg.build_requires 'openssl'

  pkg.configure do
    ['/bin/true']
  end

  pkg.build do
    ["#{settings[:host_gem]} build test-component.gemspec"]
  end

  pkg.install do
    ["#{settings[:gem_install]} test-component-#{version}.gem"]
  end
end
