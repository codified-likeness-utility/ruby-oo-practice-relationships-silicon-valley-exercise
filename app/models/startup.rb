class Startup

    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain

        @@all << self
    end

    def pivot(name, domain)
        (self.name = name, self.domain = domain)
    end

    def find_by_founder(founder)
        @@all.select {|object| object.founder == founder}
    end

    def self.domains
        startups = @@all.select {|object| object.domain}
        startups.map {|object| object.domain}
    end

    def sign_contract(venture_capitalist, type, investment) #****LEFT OFF HERE
        FundingRound.new(self, venture_capitalist, type, investment)
    end

    def num_funding_rounds
        FundingRound.all.count {|rounds| rounds.startup == self}
    end

    def rounds
        FundingRound.all.select {|object| object.startup == self}
    end

    def total_funds
        rounds.map {|object| object.investment}.inject(:+)
    end

    def investors
        rounds.map {|object| object.venture_capitalist.name}
    end

    def big_investors
        investors = rounds.select {|object| object.venture_capitalist.total_worth >= 1000000000}
        investors.map {|object| object.name}
    end

    

    def self.all 
        @@all
    end

end
