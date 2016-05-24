class HowFast::CLI

  def call
    puts "Beep, boop, beep. Beginning speed test... "

    session = Capybara.current_session
    session.visit("https://fast.com/")

    phrases = [
      "Hang tight, we're almost there...", 
      "Still cruisin'...", 
      "Patience is a virtue (especially when waiting to know your internet speed).", 
      "There's light at the end of the tunnel...",
      "Chug, chug, chug...",
      "So, ummmm, how's your day going?"
    ]

    while session.has_css?('.speed-results-container.succeeded') == false
      puts phrases.sample
      sleep 10
    end

    speed = session.find_by_id('speed-value').text
    units = session.find_by_id('speed-units').text
    puts "Your speed is: #{speed} #{units}"
  end
  
end