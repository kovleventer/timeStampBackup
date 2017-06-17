#Gets the current version included in timeStampBackup/description.xml and appends that to the name of the produced .oxt file
#TODO Solve this with makefile
cd timeStampBackup; zip -qr "../timeStampBackup_v$(echo $(grep -o '".*"' <<< $(grep 'version value' description.xml)) | sed 's/"//g' | tr '.' '-').oxt" . -i "*"
