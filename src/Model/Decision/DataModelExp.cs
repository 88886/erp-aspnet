using System;
namespace XBase.Model.Decision
{
	/// <summary>
	/// ʵ����DataModelExp ��(����˵���Զ���ȡ���ݿ��ֶε�������Ϣ)
	/// </summary>
	public class DataModelExp
	{
		public DataModelExp()
		{}
		#region Model
		private int _id;
		private string _companycd;
		private string _expressions;
        private string _ExpType;
		private DateTime _createdate;
		/// <summary>
		/// 
		/// </summary>
		public int ID
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string CompanyCD
		{
			set{ _companycd=value;}
			get{return _companycd;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Expressions
		{
			set{ _expressions=value;}
			get{return _expressions;}
		}
        /// <summary>
        /// 
        /// </summary>
        public string ExpType
        {
            set { _ExpType = value; }
            get { return _ExpType; }
        }
		/// <summary>
		/// 
		/// </summary>
		public DateTime CreateDate
		{
			set{ _createdate=value;}
			get{return _createdate;}
		}
		#endregion Model


	}
}

