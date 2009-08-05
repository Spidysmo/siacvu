using System;
using System.Collections.Generic;
using DecisionesInteligentes.Colef.Sia.Core;
using DecisionesInteligentes.Colef.Sia.Core.DataInterfaces;
using SharpArch.Core.PersistenceSupport;

namespace DecisionesInteligentes.Colef.Sia.ApplicationServices
{
    public class UsuarioService : IUsuarioService
    {
        readonly IRepository<Rol> rolRepository;
        readonly IRepository<Persona> personaRepository;
        readonly IRepository<Usuario> usuarioRepository;
        readonly IInvestigadorQuerying investigadorQuerying;

        public UsuarioService(IRepository<Rol> rolRepository, 
            IRepository<Persona> personaRepository, 
            IRepository<Usuario> usuarioRepository,
            IInvestigadorQuerying investigadorQuerying)
        {
            this.rolRepository = rolRepository;
            this.personaRepository = personaRepository;
            this.usuarioRepository = usuarioRepository;
            this.investigadorQuerying = investigadorQuerying;
        }

        public Rol GetRolById(int id)
        {
            return rolRepository.Get(id);
        }

        public Rol[] GetAllRoles()
        {
            return ((List<Rol>) rolRepository.GetAll()).ToArray();
        }

        public void SaveRol(Rol rol)
        {
            if(rol.Id == 0)
            {
                rol.Activo = true;
                rol.CreadorEl = DateTime.Now;
            }
            rol.ModificadoEl = DateTime.Now;

            rolRepository.SaveOrUpdate(rol);
        }

        public Persona GetPersonaById(int id)
        {
            return personaRepository.Get(id);
        }

        public Usuario GetUsuarioById(int id)
        {
            return usuarioRepository.Get(id);
        }

        public Usuario GetUsuarioByUserName(string username)
        {
            var parameters = new Dictionary<string, object> {{"UsuarioNombre", username}};

            return usuarioRepository.FindOne(parameters);   
        }

        public Investigador GetInvestigadorByUsuario(Usuario usuario)
        {
            return investigadorQuerying.FindInvestigadorByUsuario(usuario);
        }
    }
}