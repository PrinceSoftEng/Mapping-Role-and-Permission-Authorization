using Mapping_Role_Authorization.BAL;
using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Runtime.InteropServices;
using System.Threading;
using System.Web.Security;

namespace Mapping_Role_Authorization.DAL
{
    public class clsDalRole
    {
        clsBalRole objBalRole;
        private string constring = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        public DataTable GridLoadPermission()
        {

            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlCommand cmd = new SqlCommand("select PM.programId,PM.programList,P.[Read],P.[Add],P.[Update],P.[Delete],P.[Export] from tblRoleNPermission P Right outer join tblPageListMaster PM on PM.programId=P.permissionId order by programList", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        public DataTable BindDrowDownRole()
        {
            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT roleId, roleName FROM tblRole order by roleName", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        public Int32 AddorUpdate(clsBalRole objBalRole)
        {
            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlCommand cmd = new SqlCommand("tblRole&Permission_spInsertorUpdatetblPermission", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@programId", objBalRole.programId);
                    cmd.Parameters.AddWithValue("@roleId", objBalRole.roleId);
                    cmd.Parameters.AddWithValue("@Read", objBalRole.read);
                    cmd.Parameters.AddWithValue("@Add", objBalRole.add);
                    cmd.Parameters.AddWithValue("@Update", objBalRole.update);
                    cmd.Parameters.AddWithValue("@Delete", objBalRole.delete);
                    cmd.Parameters.AddWithValue("@Export", objBalRole.export);
                    cmd.Parameters.AddWithValue("@AccessControl", objBalRole.read + "" + objBalRole.add + "" + objBalRole.update + "" + objBalRole.delete + "" + objBalRole.export);
                    con.Open();
                    int GetData = cmd.ExecuteNonQuery();
                    con.Close();
                    return GetData;
                }
            }
        }

        public IDataReader LoadCheckedData(clsBalRole objBalRole)
        {
            using (SqlConnection con = new SqlConnection(constring))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("select programId,[Read],[Add],[Update],[Delete],[Export] from [tblRoleNPermission] where roleId=@roleId", con))
                {
                    cmd.Parameters.AddWithValue("@roleId", objBalRole.roleId);
                    {
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            using (DataTable dt = new DataTable())
                            {
                                dt.Load(sdr);
                                return dt.CreateDataReader();
                            }
                        }
                    }
                }
            }
            return null;
        }
    }
}