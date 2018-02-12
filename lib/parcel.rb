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
end
