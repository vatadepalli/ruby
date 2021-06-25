class MailboxHtmlFormatter
    def initialize(mailbox)
        raise TypeError, 'MailboxTextFormatter constructor expects a Mailbox type object.' unless mailbox.is_a?(Mailbox)
        @mailbox = mailbox
    end

    def mailbox
        @mailbox
    end

    def format
        %{
            <html>
                <head>
                    <style>
                    table {
                        border-collapse: collapse;
                    }
                    td, th {
                        border: 1px solid black;
                        padding: 1em;
                    }
                    </style>
                </head>
                <body>
                    <h1>Ruby Study Group</h1>
                    <table>
                    <thead>
                        <tr>
                        <th>Date</th>
                        <th>From</th>
                        <th>Subject</th>
                        </tr>
                    </thead>
                    <tbody>
                        #{
                            self.mailbox.emails.map do |email|
                                "<tr>\n" +
                                    "<td>" + email.date + "</td>\n" +
                                    "<td>" + email.from + "</td>\n" +
                                    "<td>" + email.subject + "</td>\n" +
                                "</tr>\n"
                            end.join("")
                        }
                    </tbody>
                    </table>
                </body>
            </html>
        }
    end
end