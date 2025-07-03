#!/bin/bash
cd ~/personalIA || exit
MSG="🔄 Backup automático — $(date +%Y-%m-%d_%H:%M)"
git add .
git commit -m "$MSG"
git push
