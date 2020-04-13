live_loop :initial_dark_background do
  stop
  with_fx :ixi_techno, mix: 0.1 do
    sample :bass_trance_c, rpitch: 2, attack: 2, amp: 3, cutoff: 100
    sleep 1
  end
end


a_var = 0
a_rel = 0.2
live_loop :acute_flow do
  stop
  use_synth :supersaw
  sample :drum_bass_hard, amp: 1, rate: 1
  play [56,57,58].choose , amp: 1 * a_var, attack: 0.2, release: a_rel
  sleep 0.3
  play [47,48,49,50].choose , amp: 0.9 * a_var, attack: 0.2, release: a_rel
  sleep 0.3
  play  [52,53,54,55].choose , apm: 0.8 * a_var, attack: 0.2, release: a_rel
  sleep 0.3
end


live_loop :creepy_bells do
  stop
  with_fx :reverb, room: 0.5, amp: 2 do
    sample :perc_bell, rate: rrand(-1.5, 1.5), amp: 0.4
    sleep rrand(0.1, 2)
  end
end


live_loop :beat_1 do
  stop
  use_bpm 120
  use_synth :dark_ambience
  with_fx :reverb do
    sample :bd_haus, amp: 20
    sleep 1
  end
end


live_loop :dirty_melody do
  stop
  use_synth :bnoise
  play_pattern_timed [:c4, :e4, :f4, :g4, :f4], [0.25, 0.25, 0.25, 1.5, 0.25], attack: 0.05, release: 0.1, amp: 1, beat_stretch: 2
  sleep 2
end


live_loop :space_travel_background do
  stop
  with_fx :echo do
    synth :tb303, release: 8, note: :e1, cutoff: (range 90, 50, -10).tick
    sleep 8
  end
end


live_loop :beat_2, auto_cue: false do
  stop
  sample :bd_haus, amp: 2
  sleep 0.5
end


live_loop :soffocated_drums do
  stop
  with_fx :gverb, room: rrand(180, 200) do
    with_fx :lpf do
      sample :drum_heavy_kick, rate: 0.75, attack: 0
      sleep 0.5
      sample :drum_tom_mid_hard, rate: 2, attack: 0.1
      sleep 0.5
    end
  end
end


live_loop :ethernal_melody do
  stop
  use_bpm 60
  use_synth :mod_pulse
  use_synth_defaults amp: 2, mod_range: 15, cutoff: 80, pulse_width: 0.2, attack: 0.03, release: 0.6,  mod_phase: 0.25
  play 30
  sleep 0.25
  play 32
  sleep 0.25
end
