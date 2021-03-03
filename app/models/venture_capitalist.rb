class VentureCapitalist

    attr_accessor :name, :total_worth
    attr_reader

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth

        @@all << self
    end
    
    def offer_contract(startup, type, amount)
        FundingRound.new(self, startup, type, amount)
    end

    def funding_rounds
        FundingRound.all.select {|object| object.venture_capitalist == self}
    end

    def portfolio
        funding_rounds.map {|object| object.startup}.uniq
    end

    def biggest_investment
        funding_rounds.max_by{|object| object.investment}
    end

    def invested(domain)
        domains = funding_rounds.select {|object| object.startup.domain == domain}
        domains.map {|object| object.investment}.sum
    end

    def self.tres_commas_club
        all.select {|object| object.total_worth > 1000000000}
    end

    def self.all 
        @@all
    end

end
