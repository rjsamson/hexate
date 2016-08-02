# Changelog
**0.6.1**
* Relaxed the Elixir version to be `>= 1.2.0` rather than `~> 1.3` since we're not using anything 1.3-specific. Discovered this while trying to do some work a Raspberry Pi, which still only has 1.2 available at the moment.
**0.6.0**
* Made more consistent use of terms 'char-list' and 'string (binary)'.
* bumped elixir version to 1.0 or greater

**0.5.1**
* Add ex_doc docs
* Version bump for hex.pm publishing

**0.5.0**
* Renamed repo because of possible namespace collision with Hex.pm.

**0.4.1**
* Added encoding with padding digits, handy for generating HTML 2 digit hexate color components.
* Can encode a float now. Useful when converting from CSS floats.
* Fixed some errors in the examples in the README.
