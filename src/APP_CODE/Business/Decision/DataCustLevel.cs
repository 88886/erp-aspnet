using System;
using System.Data;
using System.Collections.Generic;

namespace XBase.Business.Decision
{
	/// <summary>
	/// ҵ���߼���DataCustLevel ��ժҪ˵����
	/// </summary>
	public class DataCustLevel
	{
        private readonly XBase.Data.Decision.DataCustLevel dal = new XBase.Data.Decision.DataCustLevel();
		public DataCustLevel()
		{}
		#region  ��Ա����

		

		/// <summary>
		/// �Ƿ���ڸü�¼
		/// </summary>
		public bool Exists(int ID)
		{
			return dal.Exists(ID);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
		public void Add(XBase.Model.Decision.DataCustLevel model)
		{
			dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
        public void Update(XBase.Model.Decision.DataCustLevel model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
		public void Delete(int ID)
		{
			
			dal.Delete(ID);
		}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
        public XBase.Model.Decision.DataCustLevel GetModel(int ID)
		{
			
			return dal.GetModel(ID);
		}

	
		/// <summary>
		/// ��������б�
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}
		
		/// <summary>
		/// ��������б�
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

	

		#endregion  ��Ա����
	}
}

