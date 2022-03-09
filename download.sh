#!/bin/bash
# This will download .zim-files for wikipedia, wikihow, wikibooks and gutenberg to be used offline
# derco0n, 2022
# wikipedia
wikipedia=$(curl -s https://download.kiwix.org/zim/wikipedia/ | grep .zim | grep de_all_mini | cut -d "<" -f 3 | cut -d">" -f 2 | tail -n 1)
echo "Downloading $wikipedia"
wget "https://download.kiwix.org/zim/wikipedia/$wikipedia"

# wikihow
wikihow=$(curl -s https://download.kiwix.org/zim/wikihow/ | grep .zim | grep de_maxi | cut -d "<" -f 3 | cut -d">" -f 2 | tail -n 1)
echo "Downloading $wikihow"
wget "https://download.kiwix.org/zim/wikihow/$wikihow"

# wikibooks
wikibooks=$(curl -s https://download.kiwix.org/zim/wikibooks/ | grep .zim | grep de_all_maxi | cut -d "<" -f 3 | cut -d">" -f 2 | tail -n 1)
echo "Downloading $wikibooks"
wget "https://download.kiwix.org/zim/wikibooks/$wikibooks"

# gutenberg
gutenberg=$(curl -s https://download.kiwix.org/zim/gutenberg/ | grep .zim | grep de_all | cut -d "<" -f 3 | cut -d">" -f 2 | tail -n 1)
echo "Downloading $gutenberg"
wget "https://download.kiwix.org/zim/gutenberg/$gutenberg"

