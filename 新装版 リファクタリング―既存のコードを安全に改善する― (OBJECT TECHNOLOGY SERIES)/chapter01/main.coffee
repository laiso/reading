_ = require('lodash')

REGULAR = 0
NEW_RELEASE = 1
CHILDRENS = 2

class Movie
  constructor: (@title, @priceCode) ->


class Rental
  constructor: (@movie, @daysRented) ->


class Customer
  constructor: (@name="", @rentals=[]) ->

  statement: () ->
    total = 0
    point = 0
    amount = 0
    result = "Rental Record for #{@name}\n"
    _.map @rentals, (rental) ->
      movie = rental.movie
      return unless movie
      switch movie.priceCode
        when REGULAR then =>
          amount += 2
          amount += (rental.daysRented - 2)*1.5 if rental.daysRented > 2
        when NEW_RELEASE then amount += rental.daysRented*3
        when CHILDRENS then =>
          amount += 1.5
          amount += (rental.daysRented - 3)*1.5 if rental.daysRented > 3
      point++
      point++ if movie.priceCode is NEW_RELEASE and rental.daysRented > 1
      total += amount
      result += "\t#{movie.title}\t#{amount}\n"
    result += "Amount owed is $#{total}\n"
    result += "You eared #{point} frequent renter points\n"

    
main = ->
  m1 = new Movie("Special Movie", NEW_RELEASE)
  m2 = new Movie("Old Movie", REGULAR)
  rentals = [new Rental(m1, 3), new Rental(m2, 7)]
  c = new Customer("Mike", rentals)
  console.log c.statement()
main()