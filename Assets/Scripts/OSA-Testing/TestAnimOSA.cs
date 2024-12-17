namespace OSA_Testing
{
    using System;
    using Com.ForbiddenByte.OSA.Core;
    using Com.ForbiddenByte.OSA.CustomParams;
    using Com.ForbiddenByte.OSA.DataHelpers;
    using TMPro;
    using UnityEngine;
    using UnityEngine.UI;

    public class TestAnimOSA : OSA<CongLyParams, CongLyItemViewsHolder>
    {
        public             LazyDataHelper<CongLyModel> LazyData                         { get; private set; }

        protected override void Start()
        {
            this.LazyData = new(this, this.CreateNewModel);
            
            var cancel = this._Params.Animation.Cancel;
            cancel.UserAnimations.OnSizeChanges = false;
            
            base.Start();
        }

        protected override CongLyItemViewsHolder CreateViewsHolder(int itemIndex)
        {
            var instance = new CongLyItemViewsHolder();
            instance.Init(this._Params.ItemPrefab, this._Params.Content, itemIndex);
            return instance;
        }

        protected override void UpdateViewsHolder(CongLyItemViewsHolder newOrRecycled)
        {
            var model = this.LazyData.GetOrCreate(newOrRecycled.ItemIndex);
            newOrRecycled.UpdateViews(model);
        }

        private CongLyModel CreateNewModel(int index)
        {
            var model = new CongLyModel
            {
                color = new((byte)this.Rand(255), (byte)this.Rand(255), (byte)this.Rand(255), (byte)this.Rand(255)),
                index = index,
            };

            return model;
        }

        private int   Rand(int    maxExcl)      { return UnityEngine.Random.Range(0, maxExcl); }

        private float RandF(float maxExcl = 1f) { return UnityEngine.Random.Range(0, maxExcl); }
    }

    public class CongLyModel
    {
        public Color32 color;
        public int     index;
    }

    public class CongLyItemViewsHolder : BaseItemViewsHolder
    {
        public Image           bgImg;
        public TextMeshProUGUI txt;

        public override void CollectViews()
        {
            base.CollectViews();
            
        }

        public void UpdateViews(CongLyModel dataModel)
        {
            this.bgImg.color = dataModel.color;
            this.txt.text = dataModel.index.ToString();
        }
    }
    
    [Serializable]
    public class CongLyParams : BaseParamsWithPrefab
    {
    }
}