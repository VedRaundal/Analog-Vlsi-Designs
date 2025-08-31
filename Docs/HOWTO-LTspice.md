# How to add LTspice files

- Put each schematic (`.asc`) into the matching folder (e.g., `Amplifiers/`).
- Save plots as PNG or PDF into that block's `results/` folder.
- Avoid committing `.raw` and `.log` files (ignored via `.gitignore`).

## Tips
- Use descriptive filenames: `ota_openloop.asc`, `ldo_transient_test.asc`.
- Add a short note in a `README.md` inside each folder if needed.
- Do not commit proprietary PDK/model files.
