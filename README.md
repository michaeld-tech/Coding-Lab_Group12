# Coding-Lab Group 12 — KNH Hospital Data Management System

## Project Overview

This project is developed by the DevOps team for Kenyatta National Hospital (KNH).

The system manages data from 12 critical sensors covering:

- Heart Rate
- Temperature
- Water Usage

The project uses Python for data simulation and Shell Scripting for system setup, security, analysis, and archiving.

## Learning Objectives

- Shell scripting using functions, `select`, and `case`
- Permission management using `chmod` and `chown`
- Data analysis using `grep` and `awk`
- Git collaboration using branches, commits, merging, and conflict resolution

## Project Structure

```text
Coding-Lab_Group12/
├── hospital_system.py
├── hospital_admin.sh
├── hospital_analysis.sh
├── hospital_archive.sh
├── .gitignore
└── README.md
```

## Scripts

### hospital_system.py

The core Python engine that simulates hospital sensor data.

Start the engine:

```bash
python3 hospital_system.py start
```

Stop the engine:

```bash
python3 hospital_system.py stop
```

### hospital_admin.sh

This script is collaboratively developed by Members 1, 2, and 3.

**Member 1 — The Architect**

Creates and checks:

- `active_logs`
- `archived_logs`
- `reports`

**Member 2 — The Security Lead**

Uses `chmod` to protect the `active_logs` directory and displays its permissions.

**Member 3 — The Orchestrator**

Calls the setup and security functions in order and displays the system security message with the current date.

### hospital_analysis.sh

This script analyzes live sensor data.

**Member 5 — Clinical Analyst**

Uses `grep` and `awk` to identify critical Heart Rate and Temperature records and saves the results to:

```text
reports/critical_alerts.txt
```

**Member 6 — Facility Auditor**

Uses `awk` to calculate the average water usage for `ICU_WATER_RESERVE`.

### hospital_archive.sh

This script is responsible for archiving sensor logs.

**Member 4 — The Archivist**

- Moves logs from `active_logs` to `archived_logs`
- Adds timestamps to archived filenames
- Recreates empty active log files using `touch`

## Data Protection

Hospital and patient data must not be uploaded to GitHub.

The `.gitignore` file excludes:

```text
active_logs/
archived_logs/
reports/
/tmp/hospital_system.pid
```

These folders can exist locally while their generated data remains outside Git version control.

## Git Collaboration

Each member works on their own branch.

The general workflow is:

```text
Create branch
     ↓
Make changes
     ↓
Commit changes
     ↓
Push branch
     ↓
Merge into master
```

Each member must have at least 3 commits showing their specific contribution to the shell scripts.

## Team Roles

| Member | Role | Responsibility |
|---|---|---|
| Member 1 | The Architect | Environment setup |
| Member 2 | Security Lead | Data permissions |
| Member 3 | The Orchestrator | Execution logic |
| Member 4 | The Archivist | Log archiving |
| Member 5 | Clinical Analyst | Critical vital analysis |
| Member 6 | Facility Auditor | Water usage analysis |
