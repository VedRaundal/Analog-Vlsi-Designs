# Analog VLSI Design Collection (LTspice)

This repository contains a collection of **Analog VLSI circuit designs** implemented and simulated in **LTspice**.
It includes fundamental building blocks, amplifiers, ADCs, regulators, and pixel circuits used in imaging and mixed-signal systems.

## 📂 Repository Structure

```
Analog-VLSI-Designs/
├── CMOS-Inverter/
│   ├── cmos_inverter.asc
│   └── results/
│       └── transfer_curve.png
├── Pixel-Circuits/
│   ├── 4T_pixel.asc
│   ├── 5T_pixel.asc
│   └── CTIA_APS_pixel.asc
├── Amplifiers/
│   ├── single_ended_ota.asc
│   ├── diff_amplifier.asc
│   ├── switched_capacitor_amp.asc
│   ├── folded_cascode.asc
│   └── single_ended_folded_cascode_ota.asc
├── ADCs/
│   ├── fully_diff_dual_slope_adc.asc
│   └── adc_basic.asc
├── Regulators/
│   └── ldo.asc
├── Switches/
│   └── transmission_gate.asc
└── Docs/
    └── DesignNotes.md
```

## 🔧 How to Use

1. Open the `.asc` schematic files in **LTspice**.
2. Run simulations and save plots (PNG/PDF) into each block's `results/` folder.
3. Commit and push updates as you iterate.

## 📑 Circuit Blocks

- **CMOS Inverter**
- **4T Pixel & 5T Pixel Circuits**
- **CTIA APS Pixel**
- **Single-Ended OTA**
- **Differential Amplifier**
- **Switched Capacitor Amplifier**
- **Folded Cascode (single-ended)**
- **Single-Ended Folded Cascode OTA**
- **Fully Differential Dual Slope ADC**
- **Basic ADC**
- **LDO (Low Dropout Regulator)**
- **Transmission Gate Switch**

## 📊 Example Simulation Results

*(Add your plots here after running simulations — e.g., inverter transfer curve, OTA gain/phase, ADC conversion waveforms, LDO transients.)*

## 📘 References

- Sedra/Smith — *Microelectronic Circuits*
- Razavi — *Design of Analog CMOS Integrated Circuits*
- Gray & Meyer — *Analysis and Design of Analog Integrated Circuits*

## 📜 License

This project uses the MIT License (see **LICENSE**).
