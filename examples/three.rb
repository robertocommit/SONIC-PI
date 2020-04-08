live_loop :foo do
  play 60, attack: 0.1, attack_level: 1, decay: 0.2, sustain_level: 0.4, sustain: 1, release: 0.5
  sample :ambi_choir, rate: 1
  sample :bd_haus, rate: 0.1
  sleep 1
end
