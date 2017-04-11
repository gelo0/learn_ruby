class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  def time_string
    time_a = [@seconds/3600, (@seconds%3600)/60, @seconds%60]
    time_s = []
    i = 0
    3.times do
      if time_a[i] < 10
        time_s.push(padded(time_a[i]))
        i = i + 1
      else
        time_s.push(padded(time_a[i]))
        i = i + 1
      end
    end

    return time_s.join(':')
  end
  def padded(number)
    if number < 10
      return "0" + number.to_s
    else
      return number.to_s
    end
  end
end
