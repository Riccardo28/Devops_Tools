# # encoding: utf-8

# Inspec test for recipe jenkins::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html


describe command ('wget -O - http://localhost:8080') do
  its(:stdout) { should match(/jenkins/) }
end
