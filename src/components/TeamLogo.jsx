import React from "react";

/**
 * Composant d'affichage du logo d'une équipe NBA.
 * Transforme le nom d'équipe en nom de fichier SVG et gère l'erreur si le logo n'existe pas.
 * @param {string} teamName - Nom de l'équipe
 */
const TeamLogo = ({ teamName }) => {
  // Transforme le nom de l'équipe en format minuscule avec tirets
  const fileName = teamName.toLowerCase().replace(/\s+/g, "-");
  const logoPath = `${process.env.PUBLIC_URL}/images/nba-logos/${fileName}.svg`;

  return (
    <img
      src={logoPath}
      alt={`${teamName} logo`}
      className="w-10 h-10 object-contain"
      onError={(e) => { 
        e.target.src = `${process.env.PUBLIC_URL}/images/nba-logos/default.svg`; 
      }}
    />
  );
};

export default TeamLogo;