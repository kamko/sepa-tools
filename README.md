# SEPA Payment Date Modifier

A simple browser-based tool to update execution dates in SEPA payment XML files (pain.001.001.03 format).

## Problem

Banks reject SEPA payment files with past execution dates. When you have an XML payment file with an outdated `ReqdExctnDt` (Requested Execution Date), you need to update it before uploading to your bank.

## Solution

This tool runs entirely in your browser - no server, no data upload, complete privacy. Just open the HTML file and modify your payment dates.

## Features

- Drag & drop or click to upload XML file
- Date picker defaults to today's date
- Preview shows: original date, new date, transaction count, total amount
- Download modified XML with updated dates
- Updates both `ReqdExctnDt` and `CreDtTm` timestamps

## Usage

1. Open `index.html` in any modern browser
2. Drag & drop your SEPA XML file (or click to select)
3. Choose the new execution date
4. Review the payment summary
5. Click "Download" to save the modified file

## Supported Format

- **pain.001.001.03** - ISO 20022 Customer Credit Transfer Initiation

## Privacy

All processing happens locally in your browser. Your payment data never leaves your computer.

## License

MIT
