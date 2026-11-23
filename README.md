# Antigravity Plugins

Personal bundle of 5 toggleable Antigravity plugins (49 skills total) synced across Windows, WSL 2, and Linux:

- **office-documents** (4 skills): `pdf`, `docx`, `xlsx`, `pptx`
- **engineering-protocols** (26 skills): SDLC protocols, `karpathy-guidelines`, `tech-debt`, `standup`, `herdr`
- **writing-and-learning** (4 skills): `doc-coauthoring`, `learn`, `skill-creator`, `morning`
- **design-workflows** (7 skills): critique, handoff, design system, accessibility, UX copy, research
- **finance-workflows** (8 skills): financial statements, variance analysis, reconciliation, journal entries, SOX

## Setup on Linux / WSL 2

```bash
git clone <repo-url> ~/antigravity-plugins
cd ~/antigravity-plugins
./install.sh
```

To update later, just run `git pull` inside `~/antigravity-plugins` (symlinks update automatically).

## Setup on Windows (PowerShell)

```powershell
git clone <repo-url> "$env:USERPROFILE\antigravity-plugins"
cd "$env:USERPROFILE\antigravity-plugins"
.\install.ps1
```
