transcript = File.open("transcript.txt", "r")
closed_captions = File.open("closed_captions.txt", "w")

lines = 0

transcript.each_line do |line|
  lines += 1

  if lines <= 4
    closed_captions.puts "#{line}"
  else
    words = line.split(" ")

    until words == []
      transcript_line = words[0..8].join(" ")
      closed_captions.puts "#{transcript_line}\n\n"
      words = words.drop(9)
    end
  end
end

transcript.close
closed_captions.close

=begin
currently allows me to paste transcript into file named transcript
run code in command prompt
and return transcript in closed_captions broken up into lines
of 9 words each

still not perfect. problems:

in transcripts with multiple speakers,
this program does not break into a new line
when the speaker changes, so I get lines that look like this:

Fowler is the author of The Passionate Programmer and

he has been a- CHAD FOWLER: Yes? H.K.: He's

been like, he's one of the oldest, one of

the oldest Ruby guys around. He's embarrassing me. C.F.:

I'm one of the oldest people here. Thank you

Colby. Colby: Uh, let's, Yogi. Yogi is principal architect

Not so pretty. (The above is an older draft of the Panel Discussion
transcript, when for some reason I thought Hemant's name was Colby... meh.)

Also this program does not differentiate between spoken lines
and the headline at the top - so the headline is broken down
and I have to manually reformat it

There are things I would like to figure out.
Also, figuring out how to have the program post the finished cc.txt to
the appropriate location on GitHub would be cool
=end
 
