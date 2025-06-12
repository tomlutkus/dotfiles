alsa_monitor.rules = {
  {
    matches = {
      {
        { "node.name", "equals", "alsa_output.pci-0000_03_00.6.analog-stereo" },
      },
    },
    apply_properties = {

      -- ["api.alsa.rate"] = 192000,
      -- ["audio.rate"] = 192000,
      ["api.alsa.format"] = "S24LE",
      -- ["audio.format"] = "S24LE",
      ["resample.quality"] = 10,
      ["resample.disabled"] = false,
      ["resample.allow-passive"] = true
    },
  },
}

