class MailboxTextFormatter
    def initialize(mailbox)
        raise TypeError, 'MailboxTextFormatter constructor expects a Mailbox type object.' unless mailbox.is_a?(Mailbox)
        @mailbox = mailbox
    end

    def mailbox
        @mailbox
    end

    def format
        date_col_width = 12
        from_col_width = self.mailbox.emails.max_by { | email | email.from.length }.from.length + 2
        subject_col_width = self.mailbox.emails.max_by { | email | email.subject.length }.subject.length + 2

        horizontal_line = "+#{%(-) * date_col_width}+#{%(-) * from_col_width}+#{%(-) * subject_col_width}+"

        puts horizontal_line
        puts %(| #{"date".ljust(date_col_width - 1)}| #{"From".ljust(from_col_width - 1)}| #{"Subject".ljust(subject_col_width - 1)}|)
        puts horizontal_line
        self.mailbox.emails.each do |email|
            puts %(| #{email.date.ljust(date_col_width - 1)}| #{email.from.ljust(from_col_width - 1)}| #{email.subject.ljust(subject_col_width - 1)}|)
        end
        puts horizontal_line
    end
end