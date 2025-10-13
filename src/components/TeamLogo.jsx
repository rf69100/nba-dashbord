import React from "react";

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