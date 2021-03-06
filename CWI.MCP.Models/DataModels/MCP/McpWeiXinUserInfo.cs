//---------------------------------------------
// 版权信息：版权所有(C) 2014，COOLWI.COM
// 变更历史：
//      姓名          日期              说明
// --------------------------------------------
//      王军锋        2014/08/20        创建
//---------------------------------------------

using System;
using Evt.Framework.Common;
using Evt.Framework.DataAccess;

namespace CWI.MCP.Models
{
    /// <summary>
    /// 微信用户实体类
    /// </summary>
    [Serializable]
    [TableMapping(TableName = "mcp_weixin_user")]
    public partial class McpWeiXinUserInfo : Model
    {
        /// <summary>
        /// 物理字段：id
        /// </summary>
        [TableMapping(FieldName = "id", PrimaryKey = true)]
        public long Id { get; set; }

        /// <summary>
        /// 微信类型
        /// </summary>
        [TableMapping(FieldName = "wx_type")]
        public int WxType { get; set; }

        /// <summary>
        /// 物理字段：open_id
        /// </summary>
        [TableMapping(FieldName = "open_id")]
        public string OpenId { get; set; }

        /// <summary>
        /// 物理字段：user_id
        /// </summary>
        [TableMapping(FieldName = "user_id")]
        public long UserId { get; set; }

        /// <summary>
        /// 物理字段：status_code
        /// </summary>
        [TableMapping(FieldName = "status_code")]
        public int StatusCode { get; set; }

        /// <summary>
        /// 物理字段：created_on
        /// </summary>
        [TableMapping(FieldName = "created_on")]
        public DateTime CreatedOn { get; set; }

        /// <summary>
        /// 物理字段：modified_on
        /// </summary>
        [TableMapping(FieldName = "modified_on")]
        public DateTime ModifiedOn { get; set; }
    }
}

