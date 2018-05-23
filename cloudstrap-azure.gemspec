Gem::Specification.new do |gem|
  tag = `git describe --tags --abbrev=0`.chomp

  gem.name          = 'cloudstrap-azure'
  gem.homepage      = 'https://github.com/colstrom/cloudstrap-azure'
  gem.summary       = 'Cloudstrap for Azure'

  gem.version       = "#{tag}.pre"
  gem.licenses      = ['MIT']
  gem.authors       = ['Chris Olstrom']
  gem.email         = 'chris@olstrom.com'

  gem.cert_chain    = ['trust/certificates/colstrom.pem']
  gem.signing_key   = File.expand_path ENV.fetch 'GEM_SIGNING_KEY'

  gem.files         = `git ls-files -z`.split("\x0")
  gem.test_files    = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  gem.executables   = `git ls-files -z -- command/[^internal/]*`.split("\x0").map { |f| File.basename(f) }

  gem.require_paths = ['lib']
  gem.bindir        = 'command'

  gem.add_runtime_dependency 'azure_graph_rbac',             '~> 0.16', '>= 0.16.0'
  gem.add_runtime_dependency 'azure_mgmt_authorization',     '~> 0.17', '>= 0.17.0'
  gem.add_runtime_dependency 'azure_mgmt_compute',           '~> 0.17', '>= 0.17.0', '< 0.17.1' # Temporary Workaround
  gem.add_runtime_dependency 'azure_mgmt_container_service', '~> 0.16', '>= 0.16.0'
  gem.add_runtime_dependency 'azure_mgmt_network',           '~> 0.16', '>= 0.16.0'
  gem.add_runtime_dependency 'azure_mgmt_resources',         '~> 0.16', '>= 0.16.0'
  gem.add_runtime_dependency 'azure_mgmt_subscriptions',     '~> 0.16', '>= 0.16.0'
  gem.add_runtime_dependency 'chamber',                      '~> 2.12', '>= 2.12.0'
  gem.add_runtime_dependency 'chronic',                      '~> 0.10', '>= 0.10.0'
  gem.add_runtime_dependency 'concurrent-ruby',              '~> 1.0',  '>= 1.0.5'
  gem.add_runtime_dependency 'facets',                       '~> 3.1',  '>= 3.1.0'
  gem.add_runtime_dependency 'pastel',                       '~> 0.7',  '>= 0.7.0'
  gem.add_runtime_dependency 'sshkey',                       '~> 1.9',  '>= 1.9.0'
  gem.add_runtime_dependency 'tty-prompt',                   '~> 0.16', '>= 0.16.0'
  gem.add_runtime_dependency 'tty-spinner',                  '~> 0.8',  '>= 0.8.0'
  gem.add_runtime_dependency 'tty-which',                    '~> 0.3',  '>= 0.3.0'
  gem.add_runtime_dependency 'uuid',                         '~> 2.3',  '>= 2.3.8'
  gem.add_runtime_dependency 'xxhash',                       '~> 0.4',  '>= 0.4.0'
end
