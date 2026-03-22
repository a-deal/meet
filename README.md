# meet

Record meetings and transcribe them locally. No subscriptions, no cloud, no Granola.

## What it does

- Records audio from your microphone
- Transcribes using Whisper (runs locally on Apple Silicon)
- Saves recordings and transcripts to your hub

## Install

```bash
git clone https://github.com/a-deal/meet.git
cd meet
./install.sh
```

## Usage

```bash
meet start mike-session-3    # Start recording
meet stop                     # Stop + auto-transcribe
meet transcribe file.m4a      # Transcribe any audio file
meet list                     # List recordings + transcripts
```

## Requirements

- macOS (Apple Silicon recommended for fast transcription)
- sox (`brew install sox`)
- mlx-whisper (`pip install mlx-whisper`)
- ffmpeg (`brew install ffmpeg`) for non-wav files

## Where files go

- Recordings: `~/src/hub/meetings/recordings/`
- Transcripts: `~/src/hub/meetings/recordings/transcripts/`

## How it compares

| | meet | Granola | Notion AI |
|---|---|---|---|
| Cost | Free | Free (no transcript export) | $240/yr |
| Transcript export | Yes (plain text) | No | Yes |
| Runs locally | Yes | No | No |
| Privacy | 100% local | Cloud | Cloud |
| Works offline | Yes | No | No |
