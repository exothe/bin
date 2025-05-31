filename="$(uuidgen).gif"
wf-recorder -g "$(slurp)" -F fps=10 -c gif -f "/tmp/$filename"
yazi "/tmp/$filename"
rm "/tmp/$filename"
