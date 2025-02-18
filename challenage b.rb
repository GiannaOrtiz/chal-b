# Stranger Things Theme (With Different Sounds and Buildup)

use_bpm 80  # Tempo

# Define the main melody with multiple synth layers
define :stranger_things_buildup do
  # First section - intro (light and atmospheric)
  live_loop :dark_ambience do
    play :e4, release: 1.5, amp: 0.8
    sleep 1.5
    play :e4, release: 1.5, amp: 0.8
    sleep 1.5
    play :g4, release: 1.5, amp: 0.8
    sleep 1.5
    play :a4, release: 1.5, amp: 0.8
    sleep 1.5
    play :g4, release: 1.5, amp: 0.8
    sleep 1.5
    play :e4, release: 1.5, amp: 0.8
    sleep 2
    play :b3, release: 1.5, amp: 0.8
    sleep 1.5
  end
  sleep 3
  # Second section - building intensity with a bass synth
  live_loop :tb303 do
    play :e4, release: 1.2, amp: 1.2
    sleep 1
    play :g4, release: 1.2, amp: 1.2
    sleep 1
    play :a4, release: 1.2, amp: 1.2
    sleep 1
    play :b4, release: 1.2, amp: 1.2
    sleep 1
    play :g4, release: 1.2, amp: 1.2
    sleep 1
    play :e4, release: 1.2, amp: 1.2
    sleep 1
  end
  sleep 6
  # Third section - full intensity with layered sounds
  live_loop :prophet do
    play :e4, release: 1.0, amp: 2
    sleep 0.8
    play :g4, release: 1.0, amp: 2
    sleep 0.8
    play :a4, release: 1.0, amp: 2
    sleep 0.8
    play :b4, release: 1.0, amp: 2
    sleep 0.8
    play :c5, release: 1.0, amp: 2
    sleep 0.8
    play :e4, release: 1.0, amp: 2
    sleep 0.8
  end
  sleep 9
  # Adding a lead synth for a higher melody during the climax
  live_loop :mod_beep do
    sleep 0.5
    play :e5, release: 0.5, amp: 0.8
    sleep 0.5
    play :g5, release: 0.5, amp: 0.8
    sleep 0.5
    play :a5, release: 0.5, amp: 0.8
    sleep 0.5
    play :b5, release: 0.5, amp: 0.8
    sleep 0.5
    play :c6, release: 0.5, amp: 0.8
    sleep 0.5
  end
end

# Layering different effects and sounds
with_fx :reverb, room: 0.9 do
  with_fx :echo, phase: 0.5, mix: 0.4 do
    # Begin the buildup with various synths and sounds
    stranger_things_buildup  # First part
    sleep 2
    stranger_things_buildup  # Second part
    sleep 2
    stranger_things_buildup  # Third part
  end
end
