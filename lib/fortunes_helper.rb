class Object
  def >>(proc)
    proc.(self)
  end
end