Feature: Bar entry and consumption

    Scenario: Mr Pignon and Mr Leblanc are refused entry because the bar is almost full
        Given there are already 9 people in the bar
        When Mr Pignon and Mr Leblanc try to enter the bar
        Then they are refused entry

    Scenario: Mr Pignon and Mr Leblanc enter the bar and consume cocktails
        Given there are already 8 people in the bar
        When Mr Pignon and Mr Leblanc enter the bar
        Then the bar is full
        And the person behind them cannot enter
        When Mr Pignon and Mr Leblanc order each a cocktail of the month at 10€
        And Mr Leblanc pays for the drinks
        Then the bill is 20€
        And Mr Leblanc pays the bill
        And Mr Pignon is happy because they only consumed one drink
        
    Scenario: Mr Pignon and Mr Leblanc enter the bar and consume multiple cocktails
        Given there are already 3 people in the bar
        When Mr Pignon and Mr Leblanc enter the bar
        Then the bar has 5 people
        When Mr Pignon and Mr Leblanc order each a cocktail of the month at 10€
        And Mr Pignon pays for his drink
        And Mr Leblanc pays for his drink
        Then the bill for Mr Pignon is 10€
        And the bill for Mr Leblanc is 10€
        When Mr Leblanc insists on paying for another cocktail of the month
        And Mr Leblanc orders 2 more cocktails of the month for his note
        Then the bill for Mr Leblanc is 30€
        And Mr Leblanc pays the bill
        And Mr Pignon is sad because he knows that having more than one cocktail will make him have a bad night due to his liver problem