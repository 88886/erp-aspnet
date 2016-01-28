using System;
namespace XBase.Model.Decision
{
	/// <summary>
	/// ʵ����CustAnalysis ��(����˵���Զ���ȡ���ݿ��ֶε�������Ϣ)
	/// </summary>
	public class CustAnalysis
	{
		public CustAnalysis()
		{}
		#region Model
		private int _id;
		private string _custno;
		private string _custname;
		private string _companycd;
		private DateTime _createdate;
		private int _companytype;
		private int _staffcount;
		private int _setupdate;
		private int _capitalscale;
		private int _saleroomy;
		private int _setupmoney;
		private int _arrearagecount;
		private decimal _arrearageprice;
		private int _buycount;
		private decimal _buyprice;
		private int _refundmentcount;
		private decimal _refundmentprice;
		private int _complaincount;
		private string _custgrade;
		private int _custproint;
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
		public string CustNo
		{
			set{ _custno=value;}
			get{return _custno;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string CustName
		{
			set{ _custname=value;}
			get{return _custname;}
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
		public DateTime CreateDate
		{
			set{ _createdate=value;}
			get{return _createdate;}
		}
		/// <summary>
		/// ��λ���ʣ�1��ҵ��2��ҵ��3���ţ�4��Ȼ�ˣ�5������
		/// </summary>
		public int CompanyType
		{
			set{ _companytype=value;}
			get{return _companytype;}
		}
		/// <summary>
		/// Ա������
		/// </summary>
		public int StaffCount
		{
			set{ _staffcount=value;}
			get{return _staffcount;}
		}
		/// <summary>
		/// ����ʱ��
		/// </summary>
		public int SetupDate
		{
			set{ _setupdate=value;}
			get{return _setupdate;}
		}
		/// <summary>
		/// �ʲ���ģ(��Ԫ)
		/// </summary>
		public int CapitalScale
		{
			set{ _capitalscale=value;}
			get{return _capitalscale;}
		}
		/// <summary>
		/// �����۶�(��Ԫ)
		/// </summary>
		public int SaleroomY
		{
			set{ _saleroomy=value;}
			get{return _saleroomy;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int SetupMoney
		{
			set{ _setupmoney=value;}
			get{return _setupmoney;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int ArrearageCount
		{
			set{ _arrearagecount=value;}
			get{return _arrearagecount;}
		}
		/// <summary>
		/// Ƿ����
		/// </summary>
		public decimal ArrearagePrice
		{
			set{ _arrearageprice=value;}
			get{return _arrearageprice;}
		}
		/// <summary>
		/// �������
		/// </summary>
		public int BuyCount
		{
			set{ _buycount=value;}
			get{return _buycount;}
		}
		/// <summary>
		/// ������
		/// </summary>
		public decimal BuyPrice
		{
			set{ _buyprice=value;}
			get{return _buyprice;}
		}
		/// <summary>
		/// �˻�����
		/// </summary>
		public int RefundmentCount
		{
			set{ _refundmentcount=value;}
			get{return _refundmentcount;}
		}
		/// <summary>
		/// �˻����
		/// </summary>
		public decimal RefundmentPrice
		{
			set{ _refundmentprice=value;}
			get{return _refundmentprice;}
		}
		/// <summary>
		/// Ͷ�ߴ���
		/// </summary>
		public int ComplainCount
		{
			set{ _complaincount=value;}
			get{return _complaincount;}
		}
		/// <summary>
		/// Yֵ���ͻ��ȼ���
		/// </summary>
		public string CustGrade
		{
			set{ _custgrade=value;}
			get{return _custgrade;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int CustProint
		{
			set{ _custproint=value;}
			get{return _custproint;}
		}
		#endregion Model

	}
}

