puts "Insert transcript."
transcript = gets

sentences = transcript.split(".")

sentences.each do |sentence|
    puts sentence + "."
    puts ""
end

=begin
want it to do a lot more
but this is the only code I managed which actually does some semblance of what I want it to do.
though I'd share, though.
=end
