fetch('https://spotify-api-lyart.vercel.app/api/spotify')
    .then(res => res.json())
    .then(song => {
        document.getElementById('song-name').textContent = song.name;
        document.getElementById('song-artist').textContent = song.artist;
        document.getElementById('album-art').src = song.albumArt;
    })
    .catch(err => console.error('Error:', err));