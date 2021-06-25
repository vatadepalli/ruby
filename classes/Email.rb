class Email
    def initialize(subject, headers)
        @date = headers[:date]
        @from = headers[:from]
        @subject = subject
    end


    def subject
        @subject
    end

    def date
        @date
    end

    def from
        @from
    end

    def to_s
        puts "Date:     #{date}"
        puts "From:     #{from}"
        puts "Subject:  #{subject}"
    end
end

