# sepa-tools

**https://kamko.github.io/sepa-tools/**

Browser-based utilities for SEPA payment XML files (pain.001.001.03).

## Tools

### Date Modifier
Update execution dates in SEPA payment files.

### Payment QR Codes
Generate one EPC payment QR code for each transfer in a SEPA XML file.

## Problem

Banks reject SEPA payment files with past execution dates. When you have an XML payment file with an outdated `ReqdExctnDt` (Requested Execution Date), you need to update it before uploading to your bank.

## Solution

This tool runs entirely in your browser - no server, no data upload, complete privacy. Just open the HTML file and modify your payment dates.

## Features

- Drag & drop or click to upload XML file
- Date picker defaults to today's date
- Preview shows: original date, new date, transaction count, total amount
- Download modified XML with updated dates
- Generate one QR code per `CdtTrfTxInf` payment
- Print the QR sheet or download each code as PNG
- Updates both `ReqdExctnDt` and `CreDtTm` timestamps

## Usage

1. Open `index.html` in any modern browser
2. Drag & drop your SEPA XML file (or click to select)
3. Use the `Date Modifier` tab to change execution dates and download the updated XML
4. Use the `Payment QR Codes` tab to render one EPC QR code for each payment
5. Print the QR sheet or download individual QR codes as PNG

## Docker

```bash
# Build
docker build -t sepa-tools .

# Run
docker run -p 8080:8080 sepa-tools
```

Then open http://localhost:8080

The image uses a minimal Go static file server on scratch (~6MB total).

## Supported Format

- **pain.001.001.03** - ISO 20022 Customer Credit Transfer Initiation

## QR Format

- **EPC / SEPA Credit Transfer QR** (`BCD` / `SCT`)
- Works offline in the browser
- Intended for banking apps that support EPC SEPA payment QR or GiroCode scanning

## Privacy

All processing happens locally in your browser. Your payment data never leaves your computer.

## License

MIT

Vendored QR rendering uses `qrcode-generator` by Kazuhiko Arase under the MIT license.
