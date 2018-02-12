class Parcel
  def initialize(l, w, h, weight)
    @l = l.to_i
    @w = w.to_i
    @h = h.to_i
    @weight = weight.to_i
  end

  def volume
    @l * @w * @h
  end

  def cost_to_ship

  end
end
