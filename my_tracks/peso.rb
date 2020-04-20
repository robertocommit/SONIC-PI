live_loop :first_block do
  sample :elec_blup
  sample :bd_ada
  sleep 0.2
end

sleep 4
live_loop :second_block do
  sleep 0.4
  sample :bd_haus
end

sleep 8
live_loop :third_block do
  sleep 0.8
  sample :drum_cymbal_soft, rate: 2
end

sleep 8
live_loop :fourth_block do
  sleep 4
  sample :drum_snare_hard, rate: 0.1
end

sleep 8
live_loop :fifth_block do
  sleep 8
  sample :loop_industrial, rate: 0.1
end

sleep 8
live_loop :sixth_block do
  sleep 8
  use_random_seed 10
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
      30.times do
        sample :elec_triangle, amp: 0.5, release: 5
        sleep 0.02
      end
    end
  end
end
