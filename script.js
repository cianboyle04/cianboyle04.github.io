fetch('https://spotify-api-lyart.vercel.app/api/spotify')
    .then(res => res.json())
    .then(song => {
        document.getElementById('song-name').textContent = song.name;
        document.getElementById('song-artist').textContent = song.artist;
        document.getElementById('album-art').src = song.albumArt;
        document.getElementById('song-mood').textContent = 'I seem to be ' + song.mood;
        const link = document.getElementById('last-played');
        link.href = song.url;
        link.classList.remove('loading');
        link.classList.add('loaded');
    })
    .catch(err => {
        console.error('Error:', err);
        document.getElementById('song-name').textContent = 'Could not load song';
    });