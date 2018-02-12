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

  def cost_to_ship
    base = 5
    base += @vol * 0.05
    base += @weight * 0.05
  end
end
