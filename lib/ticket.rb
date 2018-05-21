class Ticket
  attr_reader :fare, :stamped_at

  def initialize(fare)
    @fare = fare
  end

  # 駅名を受け取り、乗車駅(@stamped_at)に代入
  #
  # @param [String] name 乗車駅名
  def stamp(name)
    @stamped_at = name
  end
end
