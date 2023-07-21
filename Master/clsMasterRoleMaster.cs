using Mapping_Role_Authorization.BAL;
using Mapping_Role_Authorization.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;

namespace Mapping_Role_Authorization.Master
{
    public class clsMasterRoleMaster
    {
        public DataTable GridLoadPermission()
        { 
            clsBalRoleMaster objDalRole = new clsBalRoleMaster();
            return objDalRole.GridLoadPermission();
        }

        public DataTable BindDrowDownRole()
        {
            clsBalRoleMaster objDalRole = new clsBalRoleMaster();
            return objDalRole.BindDrowDownRole();
        }

        public Int32 AddorUpdate(clsDalRoleMaster objbalrole)
        {
            clsBalRoleMaster objDalRole= new clsBalRoleMaster();
            return objDalRole.AddorUpdate(objbalrole);
        }

        public IDataReader LoadCheckedData(clsDalRoleMaster objbalrole)
        {
            clsBalRoleMaster objDalRole=new clsBalRoleMaster();
            return objDalRole.LoadCheckedData(objbalrole);
        }
    }
}