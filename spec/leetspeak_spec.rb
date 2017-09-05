require('rspec')
require('leetspeak')

describe('#leetspeak') do
  it("returns a string as is when no leetspeak rules apply") do
    expect(("jumpy").leetspeak()).to(eq("jumpy"))
  end

  it("replaces every 'e' or 'E' in a string with a '3'") do
    expect(("keep").leetspeak()).to(eq("k33p"))
  end
end
