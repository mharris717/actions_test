#!/usr/bin/env ruby

require 'mharris_ext'

ec "pwd && ls -al && env"

if ENV['GITHUB_REF'] == 'refs/heads/master'
  ec 'git config --global user.email "docs@liveramp.com"'
  ec 'git config --global user.name "Docs"'
  ec 'date > current.txt'
  ec 'git add current.txt'
  ec 'git commit -m "current date"'
  ec 'git push origin master:docs -f'
else
  puts "not master"
end
