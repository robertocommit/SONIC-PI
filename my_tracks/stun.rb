live_loop :scaled_sample do
  sample :bass_trance_c, rpitch: 2, attack: 2, amp: 3.5, cutoff: 70
  sleep 1
end


a_var = 0.6
live_loop :first_loop do
  use_synth :supersaw
  sample :drum_bass_hard, amp: 3, rate: 1
  play 47, amp: 1 * a_var, attack: 0.2, release: 0.2, attack_level: 1
  sleep 0.3
  play 54, amp: 0.9 * a_var, attack: 0.2, release: 0.2, attack_level: 2
  sleep 0.3
  play 55, apm: 0.8 * a_var, attack: 0.2, release: 0.2, attack_level: 1.5
  sleep 0.3
end
