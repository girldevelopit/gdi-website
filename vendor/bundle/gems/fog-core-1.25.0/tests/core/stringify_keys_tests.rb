input_hash = {
  :name => 'test-server',
  :flavor => '123'
}

output_hash = {
  'name' => 'test-server',
  'flavor' => '123'
}

Shindo.tests('Fog::StringifyKeys', 'core') do

  tests('keys') do

    tests('stringifies symbols') do
      returns(output_hash) {
        Fog::StringifyKeys.stringify(input_hash)
      }
    end

    tests('skips strings') do
      returns(output_hash) {
        Fog::StringifyKeys.stringify(output_hash)
      }
    end

  end

end
