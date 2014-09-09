
var transcribeRPM = func(id) {
  setprop("/engines/engine[" ~ id ~ "]/rpm", getprop("/engines/engine[" ~ id ~ "]/thruster/rpm"));
};

var updateRPM = func {
  transcribeRPM(0);
  transcribeRPM(1);
  settimer(updateRPM, 0);
}

setlistener("/sim/signals/fdm-initialized", func { updateRPM(); });

