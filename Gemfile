# frozen_string_literal: true

source ENV['GEM_SOURCE'] || 'https://rubygems.org'

def vanagon_location_for(place)
  if place =~ /^((?:git[:@]|https:)[^#]*)#(.*)/
    [{ git: Regexp.last_match(1), branch: Regexp.last_match(2), require: false }]
  elsif place =~ %r{^file://(.*)}
    ['>= 0', { path: File.expand_path(Regexp.last_match(1)), require: false }]
  else
    [place, { require: false }]
  end
end

gem 'artifactory'
gem 'packaging', *vanagon_location_for(ENV['PACKAGING_LOCATION'] || '~> 0.105')
gem 'rake'
gem 'rubocop'
gem 'rubocop-rake'
gem 'vanagon', *vanagon_location_for(ENV['VANAGON_LOCATION'] || '~> 0.39')
