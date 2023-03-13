class RideSearch
  def initialize(params = {})
    @params = params[:search]
  end

  def search(records = Ride.all)
    records = records.includes(beach: :location)
    records = records.where(location: { name: @params[:location] }) if @params[:location].present?
    records = records.where(seats: @params[:seats]..5) if @params[:seats].present?
    records = records.where(date_time: date_time_interval) if @params[:date_time].present?
    records = records.near(@params[:address], 10) if @params[:address].present?
    records
  end

  private

  def date_time_interval
    return unless @params[:date_time]

    date = Date.parse(@params[:date_time])

    date.beginning_of_day..date.end_of_day
  end
end
