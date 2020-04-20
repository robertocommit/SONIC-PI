define :bloob do
  use_synth :fm
  p = play (chord :Eb3, :minor).choose - [0, 12, -12].choose, divisor: 0.01, div_slide: rrand(0, 10), depth: rrand(0.001, 2), attack: 0.01, release: rrand(0, 5), amp: 0.5
  control p, divisor: rrand(0.001, 50)
  sleep [0.5, 1, 2].choose
end


5.times do
  bloob
end

sleep 1
live_loop :first_block do
  sample :elec_blup
  sample :bd_ada
  sleep 0.2
end

sleep 4
live_loop :second_block do
  sleep 0.4
  with_fx :distortion, distort: [0.07, 0.09, 0.11, 0.13, 0.15].choose do
    sample :bd_haus
  end
end

sleep 4
live_loop :third_block do
  sleep 0.8
  sample :drum_cymbal_soft, rate: [1.8, 2, 2.2].choose
end

sleep 8
live_loop :fourth_block do
  sleep 4
  sample :drum_snare_hard, rate: [0.1, 0.3, 0.5].choose
end

sleep 4
live_loop :fifth_block do
  sleep 8
  sample :loop_industrial, rate: [0.1, 0.3, 0.5].choose
end

sleep 8
live_loop :sixth_block do
  sleep 8
  use_random_seed [9, 10, 11].choose
  notes =  (ring :b1, :b2, :e1, :e2, :b3, :e3)
  with_synth :dsaw do
    with_fx(:reverb, room: 0.5, mix: 0.3) do
      n1 = (chord notes.choose, :minor).choose
      n2 = (chord notes.choose, :minor).choose
      p = play n1, amp: 2, release: 8, note_slide: 4, cutoff: 30, cutoff_slide: 4, detune: rrand(0, 0.2)
      control p, note: n2, cutoff: rrand(80, 120)
    end
  end
end

sleep 8
live_loop :seventh_block do
  sleep 16
  with_fx :reverb, room: 1 do
    with_fx :echo do
      rrand(25, 35).times do
        sample :elec_triangle, amp: 0.5, release: 5
        sleep [0.01, 0.02, 0.03].choose
      end
    end
  end
end

sleep 4
live_loop :eigth_block do
  bloob
end
