const fs = require('fs');
const path = require('path');

const logosDir = path.join(__dirname, 'public', 'images', 'nba-logos');

fs.readdir(logosDir, (err, files) => {
  if (err) return console.error('Erreur lecture dossier:', err);

  files.forEach(file => {
    if (path.extname(file).toLowerCase() === '.svg') {
      // renommer : tout en minuscules + tirets à la place des espaces
      const newName = file
        .replace(/.svg$/i, '')
        .toLowerCase()
        .replace(/[\s_]+/g, '-') + '.svg';

      const oldPath = path.join(logosDir, file);
      const newPath = path.join(logosDir, newName);

      if (oldPath !== newPath) {
        fs.rename(oldPath, newPath, err => {
          if (err) console.error('Erreur renommage:', err);
          else console.log(`Renommé : ${file} → ${newName}`);
        });
      }
    }
  });
});
