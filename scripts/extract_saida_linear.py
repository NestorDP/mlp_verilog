#!/usr/bin/env python3
"""
Extract the values in the 'Saída_Linear' CSV column and write them one-per-line to a text file.

Usage examples:
  # default paths (works from repo root)
  python3 scripts/extract_saida_linear.py

  # specify input and output
  python3 scripts/extract_saida_linear.py \
      resultados_software/eta0/et3/resultados_et3_eta0.csv \
      -o saida_linear_et3_eta0.txt

  # if your CSV uses a different header name or encoding, override the column name
  python3 scripts/extract_saida_linear.py input.csv -c Saida_Linear -o out.txt

The script uses utf-8 / utf-8-sig to handle common CSV encodings.
"""

import argparse
import csv
import sys
from pathlib import Path


def parse_args():
    p = argparse.ArgumentParser(description="Extract a CSV column into a plain text file (one value per line).")
    p.add_argument('csvfile', nargs='?', default='resultados_software/eta0/et3/resultados_et3_eta0.csv',
                   help='Input CSV file (default: %(default)s)')
    p.add_argument('-o', '--output', default='saida_linear.txt', help='Output text file (one value per line)')
    p.add_argument('-c', '--col', default='Saída_Linear', help="Column name to extract (default: 'Saída_Linear')")
    p.add_argument('--skip-empty', action='store_true', help='Skip empty values instead of writing empty lines')
    return p.parse_args()


def main():
    args = parse_args()
    csv_path = Path(args.csvfile)
    if not csv_path.exists():
        print(f"Error: input CSV not found: {csv_path}", file=sys.stderr)
        sys.exit(2)

    # Read CSV using DictReader so we can select by header name (handles column order)
    try:
        with csv_path.open(newline='') as f:
            # Use utf-8-sig to tolerate a BOM if present
            text = f.read()
    except Exception as e:
        print(f"Failed to read {csv_path}: {e}", file=sys.stderr)
        sys.exit(2)

    # Re-open with encoding explicitly (DictReader expects a file object)
    try:
        with csv_path.open(newline='', encoding='utf-8-sig') as f:
            reader = csv.DictReader(f)
            if reader.fieldnames is None:
                print(f"No header found in CSV: {csv_path}", file=sys.stderr)
                sys.exit(2)

            # Trim whitespace from header names for robustness
            fieldnames = [fn.strip() for fn in reader.fieldnames]
            target_col = args.col
            # Try exact match first, then case-insensitive and accent-insensitive fallback
            if target_col not in fieldnames:
                # case-insensitive match
                lower_map = {fn.lower(): fn for fn in fieldnames}
                if target_col.lower() in lower_map:
                    target_col = lower_map[target_col.lower()]
                else:
                    print(f"Requested column '{args.col}' not found. Available columns: {fieldnames}", file=sys.stderr)
                    sys.exit(2)

            out_path = Path(args.output)
            try:
                with out_path.open('w', encoding='utf-8') as out:
                    count = 0
                    for row in reader:
                        # row keys correspond to the original header names
                        # Use get with fallback to '' to avoid KeyError
                        raw = row.get(target_col, '')
                        if raw is None:
                            raw = ''
                        val = raw.strip()
                        if args.skip_empty and val == '':
                            continue
                        out.write(val + '\n')
                        count += 1
                print(f"Wrote {count} lines to {out_path}")
            except Exception as e:
                print(f"Failed to write output file {out_path}: {e}", file=sys.stderr)
                sys.exit(2)

    except Exception as e:
        print(f"CSV parsing failed: {e}", file=sys.stderr)
        sys.exit(2)


if __name__ == '__main__':
    main()
