#!/usr/bin/env bash

echo "Changing dir to training data"
cd training-data
echo "Generating piano data"
python generate.py piano
echo "Generating xylophone data"
python generate.py xylophone
echo "Generating small grid data"
python generate.py small-grid
echo "Generating piano-roll data"
python generate.py piano-roll
echo "Generating zither data"
python generate.py zither
echo "Generating circle data"
python generate.py circle
echo "Generating large grid data"
python generate.py large_grid
echo "Generating tonnetz data"
python generate.py tonnetz

echo "Coming up a directory"
cd ..

echo "Running piano..."
node dump-data.js piano > piano.json

echo "Running small-grid..."
node dump-data.js small-grid > small_grid.json

echo "Running xylophone..."
node dump-data.js xylophone > xylophone.json

echo "Running piano-roll..."
node dump-data.js piano-roll > piano_roll.json

echo "Running zither..."
node dump-data.js zither > zither.json

echo "Running circle"
node dump-data.js circle > circle.json

echo "Running large-grid..."
node dump-data.js large-grid > large_grid.json

echo "Running tonnetz"
node dump-data.js tonnetz > tonnetz.json

echo "Running test data"
node dump-data.js test > test_data.json

echo "Done creation of data"
