using System;
using System.Data;
using System.Collections.Generic;

namespace XBase.Business.Decision
{
	/// <summary>
	/// ҵ���߼���CustAnalysis ��ժҪ˵����
	/// </summary>
	public class CustAnalysis
	{
        private readonly XBase.Data.Decision.CustAnalysis dal = new XBase.Data.Decision.CustAnalysis();
		public CustAnalysis()
		{}
		#region  ��Ա����

		/// <summary>
		/// ����һ������
		/// </summary>
        public void Add(XBase.Model.Decision.CustAnalysis model)
		{
			dal.Add(model);
		}

		/// <summary>
		/// ����һ������
		/// </summary>
        public void Update(XBase.Model.Decision.CustAnalysis model)
		{
			dal.Update(model);
		}

		/// <summary>
		/// ɾ��һ������
		/// </summary>
	    //public void Delete()
		//{
			//�ñ���������Ϣ�����Զ�������/�����ֶ�
			//dal.Delete();
		//}

		/// <summary>
		/// �õ�һ������ʵ��
		/// </summary>
        public XBase.Model.Decision.CustAnalysis GetModel(int ID)
		{
			//�ñ���������Ϣ�����Զ�������/�����ֶ�
			return dal.GetModel(ID);
		}


        public DataTable GetModel(string CustNO, string CompanyCD, string ModelType, string Year, string Month) 
        {
            try
            {
                DataTable dt = dal.GetModel(CustNO, CompanyCD, ModelType, Year, Month).Tables[0];
                DataTable dt1=DataModelExpIt.ExpDataTable(dt, CompanyCD, ModelType,5);
                return dt1;
            }
            catch 
            {
                return null;
            }
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
        public DataSet GetListDistributing(string strWhere)
        {
            return dal.GetListDistributing(strWhere); 
        }
         /// <summary>
        /// ��������б�
        /// </summary>
        public DataSet GetList(int topRowsCount, string orderby, string strWhere)
        {
            return dal.GetList(topRowsCount, orderby, strWhere);
        }

         /// <summary>
        /// ��������б�
        /// </summary>
        public DataSet GetListSum(int topRowsCount, string orderby, string strWhere)
        {
            return dal.GetListSum(topRowsCount, orderby, strWhere);
        }
		
        /// <summary>
        /// �ͻ��ȼ��ֲ�_ͼ��
        /// </summary>
        public DataSet GetDistributing(string CompanyCD,string Year,string Month)
        {
            return dal.GetDistributing(CompanyCD,Year,Month);
        }

         public DataTable GetPageData(int PageSize, int PageIndex, string queryCondition, string sortExp, string fieldList,ref int TotalCount)
         {
            return dal.GetPageData(PageSize,PageIndex,queryCondition,sortExp,fieldList,ref TotalCount);
         }
        /// <summary>
        /// �����ʷ��¼
        /// </summary>
         public void AddAnalysisHistory(string CustNO, string CustName, string CustGrade, string GradeDate)
         {
             dal.AddAnalysisHistory(CustNO, CustName, CustGrade, GradeDate);
         }

         /// <summary>
        /// ��ȡ��ʷ��¼
        /// </summary>
         public DataSet GetAnalysisHistoryByCustNO(string CustNO)
         {
             return dal.GetAnalysisHistoryByCustNO(CustNO);
         }

         /// <summary>
         /// ��ȡ��ʷ��¼
         /// </summary>
         public DataSet GetAnalysisHistoryByCustNO(string CustNO, string GradeDate)
         {
             return dal.GetAnalysisHistoryByCustNO(CustNO,GradeDate);
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

