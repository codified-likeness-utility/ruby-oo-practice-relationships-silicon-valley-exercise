require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


s1 = Startup.new("McFly Hoverboards", "Marty McFly", "mcflyhoverboards.com")
s2 = Startup.new("Just Bacon", "Ron Swanson", "www.lisnr.com")
s3 = Startup.new("Advisor Growth Club", "Ian Davies", "www.advisorgrothclub.com")

vc1 = VentureCapitalist.new("Mark Cuban", 4200000000.00)
vc2 = VentureCapitalist.new("Gary Vaynerchuck", 160000000.00)
vc3 = VentureCapitalist.new("Daymond John", 350000000.00)

fr1 = FundingRound.new(s1, vc1, "Angel", 15000000.00)
fr2 = FundingRound.new(s2, vc2, "Seed", 6000000.00)
fr3 = FundingRound.new(s3, vc3, "Series A", 900000.00)
fr4 = FundingRound.new(s1, vc2, "Series A", 1400000.00)
fr5 = FundingRound.new(s1, vc1, "Series A", 1000000.00)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line

# ("McFly Hoverboards", "Marty McFly", "mcflyhoverboards.com")
# ("Just Bacon", "Ron Swanson", "www.lisnr.com")
# ("Advisor Growth Club", "Ian Davies", "www.advisorgrothclub.com")