require 'net/http'
require 'json'

#AIzaSyDzSzDb3XUuK54_3vFQoY-kbDD_p6_qGDc

class Parcel
  def initialize(l, w, h, weight)
    @l = l.to_i
    @w = w.to_i
    @h = h.to_i
    @weight = weight.to_i
  end

  def volume
    @vol = @l * @w * @h
  end

  def cost_to_ship(shipping,insurance)
    if shipping == 'air'
      base = 10
      base += @weight * 0.15
    elsif shipping == 'ground'
      base = 5
      base += @weight * 0.05
    elsif shipping == 'overnight'
      base = 300
      base += @weight * 1
    end

    if insurance
      base += 15
    end
  end

  def distance(zip1, zip2)

    url = "https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=97211&destinations=97218&key=AIzaSyDzSzDb3XUuK54_3vFQoY-kbDD_p6_qGDc"
    uri = URI(url)
    response = Net::HTTP.get(uri)

    result = JSON.dump(response)
    resultarray = result.split(':')
    puts resultarray[6].gsub(/^(?!\d(.*?)\mi$)/,'')

    # result.each do |result|
    #   puts result
    # end
    # rows = object['rows']
    # puts rows.fetch('elements')
    # # distance = elements['distance']
    # # puts final = distance['text']

  end
end

parcel = Parcel.new(1, 1, 1, 1)
parcel.distance(97211, 97218)
