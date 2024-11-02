begin
  require 'amazing_print'
  require 'irb'
  require 'rainbow'
  require 'rubygems'
  require 'amazing_print'

  # TODO: fix delegation to enable AmazingPrint again
  # https://github.com/awesome-print/awesome_print/issues/339#issuecomment-790004674
  AmazingPrint.irb!
rescue LoadError => e
  puts "ERROR: Could not load gem #{e}"
end

IRB.conf[:ECHO_ON_ASSIGNMENT] = true
IRB.conf[:USE_AUTOCOMPLETE] = false
IRB.conf[:USE_MULTILINE] = false

# Add color coding based on Rails environment for safety

if defined? Rails
  banner = if Rails.env.production?
             "\e[41;97;1m #{Rails.env} \e[0m "
           else
             "\e[42;97;1m #{Rails.env} \e[0m "
           end

  # Build a custom prompt
  IRB.conf[:PROMPT][:CUSTOM] = IRB.conf[:PROMPT][:DEFAULT].merge(
    PROMPT_I: banner + IRB.conf[:PROMPT][:DEFAULT][:PROMPT_I]
  )

  IRB.conf[:SAVE_HISTORY] = false if Rails.env.production?
  # Use custom prompt by default
  IRB.conf[:PROMPT_MODE] = :CUSTOM
end
