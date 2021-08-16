playlist = {
	'title': 'AMPM', 
	'author': 'zoraulia', 
	'songs': [
		{'title': 'Lovesick Girls', 'artist': ['BLACKPINK'], 'duration': 2.5},
		{'title': 'Ice Cream', 'artist': ['BLACKPINK', 'Selena Gomez'], 'duration': 5.25},
		{'title': 'Bonnie & Clyde', 'artist': ['yuqi'], 'duration': 2.0}
	]
}

total_length = 0
for song in playlist['songs']:
	total_length += song['duration']

print(total_length)