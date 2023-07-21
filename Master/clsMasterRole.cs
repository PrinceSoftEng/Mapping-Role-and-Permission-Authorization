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
    public class clsMasterRole
    {
        public DataTable GridLoadPermission()
        { 
            clsDalRole objDalRole = new clsDalRole();
            return objDalRole.GridLoadPermission();
        }

        public DataTable BindDrowDownRole()
        {
            clsDalRole objDalRole = new clsDalRole();
            return objDalRole.BindDrowDownRole();
        }

        public Int32 AddorUpdate(clsBalRole objbalrole)
        {
            clsDalRole objDalRole= new clsDalRole();
            return objDalRole.AddorUpdate(objbalrole);
        }

        public IDataReader LoadCheckedData(clsBalRole objbalrole)
        {
            clsDalRole objDalRole=new clsDalRole();
            return objDalRole.LoadCheckedData(objbalrole);
        }
    }
}