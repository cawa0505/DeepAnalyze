#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

if [ -f ".venv/bin/python3" ]; then
    PYTHON_BIN=".venv/bin/python3"
else
    PYTHON_BIN="python3"
fi

export API_BASE="${API_BASE:-http://localhost:8000/v1}"
export DEFAULT_MODEL="${DEFAULT_MODEL:-DeepAnalyze-8B}"

echo "Starting DeepAnalyze API Server with $PYTHON_BIN..."
exec $PYTHON_BIN main.py
