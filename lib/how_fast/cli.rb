class HowFast::CLI

  def call
    puts "Beep, boop, beep. Beginning speed test..."

    session = Capybara.current_session
    session.visit("https://fast.com/")

    while !session.has_css?('.speed-results-container.succeeded')
      print_phrase
      sleep 1
    end

    speed = session.find_by_id('speed-value').text
    units = session.find_by_id('speed-units').text
    
    puts ""
    puts "YOUR SPEED IS: #{speed} #{units}"
  end

  def print_phrase
    phrases = [
      "Hang tight, we're almost there...", 
      "Still movin'...", 
      "Patience is a virtue...", 
      "There's light at the end of the tunnel...",
      "Chug, chug, chug...",
      "So, how's your day going?",
      "Life is too short to have slow internet.",
      "Making progress...",
      "Wait for it..."
    ]

    puts phrases.sample
  end
  
end