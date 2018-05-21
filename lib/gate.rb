class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES    = [150, 190]

  # @param [String] name
  def initialize(name)
    @name = name
  end

  # Ticketオブジェクトを受け取り、
  # Gateオブジェクトの@nameをTicketオブジェクトの:stamped_atに代入する
  #
  # @param [Ticket] ticket
  def enter(ticket)
    ticket.stamp(@name)
  end

  # Ticketオブジェクトを受け取り、その金額で改札を出られるか判断する
  #
  # @param  [Ticket]  ticket
  # @return [Boolean] 改札を出られるのであればtrue,そうでなければfalse
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  # Ticketオブジェクトを受け取り、乗車駅と下車駅から運賃を割り出す。
  #
  # @param  [Ticket] ticket
  # @return [Integer] 運賃
  def calc_fare(ticket)
    from     = STATIONS.index(ticket.stamped_at)
    to       = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
