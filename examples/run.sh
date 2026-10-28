#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_media_pipeline info
PYTHONPATH=src python -m gbt_media_pipeline check --payload '{}'
PYTHONPATH=src python -m gbt_media_pipeline run   --payload '{}'
