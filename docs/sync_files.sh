#!/bin/bash
cd /Users/mahiireddy/Documents/AzureSharedDrive/

echo "Job ran at $(date)" >> /Users/mahiireddy/Documents/AzureSharedDirectory/sync.log

export PATH=$PATH:/opt/homebrew/bin

# Azure File Share to Local Sync
/opt/homebrew/bin/azcopy sync "https://strgacntntwrkshrddrv.file.core.windows.net/fileshare22?sv=2022-11-02&ss=bfqt&srt=sco&sp=rwdlacupiytfx&se=2025-01-09T03:06:37Z&st=2025-01-07T19:06:37Z&spr=https&sig=EeNbDn08Tgz26FNulBoJknRnz4Ct3Bkj%2Fhro9go24hU%3D" "/Users/mahiireddy/Documents/AzureSharedDrive" --recursive

# Local to Azure File Share Sync
/opt/homebrew/bin/azcopy sync "/Users/mahiireddy/Documents/AzureSharedDrive" "https://strgacntntwrkshrddrv.file.core.windows.net/fileshare22?sv=2022-11-02&ss=bfqt&srt=sco&sp=rwdlacupiytfx&se=2025-01-09T03:06:37Z&st=2025-01-07T19:06:37Z&spr=https&sig=EeNbDn08Tgz26FNulBoJknRnz4Ct3Bkj%2Fhro9go24hU%3D" --recursive
