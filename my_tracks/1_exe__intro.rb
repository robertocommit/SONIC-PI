with_fx :echo, mix: 0.8 do
  live_loop :intro do
    play (scale :C4, :minor_pentatonic), release: rrand(0.1, 4), decay: rrand(0.1, 0.4), attack: rrand(0.1, 0.4), sustain: rrand(0.1, 0.4)
    play (scale :Bb, :major_pentatonic), amp: 0.2
    play (scale :D3, :minor_pentatonic), amp: 0.2
    sample :ambi_piano, attack: 0.5, attack_level: 1
    sleep 4
  end
end

with_fx :reverb, mix: 0.8 do
  live_loop :intro_2 do
    play (scale :C4, :minor_pentatonic), release: rrand(0.1, 4), decay: rrand(0.1, 0.4), attack: rrand(0.1, 0.4), sustain: rrand(0.1, 0.4)
    play (scale :Bb, :major_pentatonic), amp: 0.2
    play (scale :D3, :minor_pentatonic), amp: 0.2
    sample :ambi_piano, attack: 0.1, attack_level: 1
    sleep 1
  end
end
