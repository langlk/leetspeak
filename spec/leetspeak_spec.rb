require('rspec')
require('leetspeak')

describe('#leetspeak') do
  it("returns a string as is when no leetspeak rules apply") do
    expect(("jumpy").leetspeak()).to(eq("jumpy"))
  end
end
