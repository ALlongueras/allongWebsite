﻿// -----------------------------------------------------------------------
// <copyright file="GetData.cs" company="">
// TODO: Update copyright text.
// </copyright>
// -----------------------------------------------------------------------

namespace Logica.Dao
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;

    using Logica.Helpers;
    using Logica.Models;

    using Newtonsoft.Json;

    /// <summary>
    /// TODO: Update summary.
    /// </summary>
    public class GetData
    {
        public static List<Jugadors> GetPlayersFromJson(string path)
        {
            string json = Utils.ReadJson(path);
            var llistatJugadors = JsonConvert.DeserializeObject<List<Jugadors>>(json);
            return llistatJugadors;
        }
        public static List<Team> GetTeamsFromJson(string path)
        {
            string json = Utils.ReadJson(path);
            var llistatJugadors = JsonConvert.DeserializeObject<List<Team>>(json);
            return llistatJugadors;
        }
    }
}