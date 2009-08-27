﻿using DecisionesInteligentes.Colef.Sia.Core;

namespace DecisionesInteligentes.Colef.Sia.ApplicationServices
{
    public interface IUsuarioService
    {
        //Roles
        Rol GetRolById(int id);
        Rol[] GetAllRoles();
        void SaveRol(Rol rol);

        //Usuario
        Usuario GetUsuarioById(int id);
        Usuario GetUsuarioByUserName(string username);

        Investigador GetInvestigadorByUsuario(Usuario usuario);
    }
}
