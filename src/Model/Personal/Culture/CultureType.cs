using System;
namespace XBase.Model.Personal.Culture
{
	/// <summary>
	/// ʵ����CultureType ��(����˵���Զ���ȡ���ݿ��ֶε�������Ϣ)
	/// </summary>
	public class CultureType
	{
		public CultureType()
		{}
		#region Model
		private int _id;
		private string _companycd;
		private string _typename;
		private int _suppertypeid;
		private string _path;
		/// <summary>
		/// �Զ�����
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
		/// ��Ϣ��������
		/// </summary>
		public string TypeName
		{
			set{ _typename=value;}
			get{return _typename;}
		}
		/// <summary>
		/// �ϼ�����ID
		/// </summary>
		public int SupperTypeID
		{
			set{ _suppertypeid=value;}
			get{return _suppertypeid;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Path
		{
			set{ _path=value;}
			get{return _path;}
		}
		#endregion Model

	}
}

