@EndUserText.label: 'Custom Entity - Sales Đá'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_CE_SALES_DA'
@Metadata.allowExtensions: true
define root custom entity zce_sales_da
{
  key BillingDocument     : vbeln; // I_BillingDocumentItem-BillingDocument
  key BillingDocumentItem : posnr; // I_BillingDocumentItem-BillingDocumentItem

      // I_BillingDocument
      NgayChungTu         : abap.dats; // BillingDocumentDate
      DoiTuongCongNo      : kunrg; // PayerParty
      TyGia               : abap.dec(9,5); // AccountingExchangeRate
      QuocGiaDen          : land1; // Country;

      // I_BillingDocumentItem
      MaVatTu             : matnr; // Product
      @Semantics.quantity.unitOfMeasure: 'DonViTinh'
      SoLuong             : abap.quan(13,3); // BillingQuantity

      // I_BillingDocumentTextTP
      SoToKhai            : abap.string; // LongTextID = Z020 --> LongText
      SoInv               : abap.string; // LongTextID = Z027 --> LongText

      // I_JournalEntry (Example: AccountingDocument = 9400000036 --> DocumentReferenceID)
      SoHoaDon            : abap.char(16); // DocumentReferenceID

      // I_ProductText
      TenVatTu            : abap.char(40); // ProductName

      // I_ProductUnitsOfMeasure
      DonViTinh           : meins; // BaseUnit

      // I_BillingDocumentItemPrcgElmnt
      @Semantics.amount.currencyCode: 'ConditionCurrency'
      GiaCongThuc         : abap.dec(24,9); // ConditionRateAmount
      ConditionCurrency   : waers; // ConditionCurrency
      @Semantics.amount.currencyCode: 'ConditionCurrency'
      GiaBan              : abap.dec(24,9);
      @Semantics.amount.currencyCode: 'ConditionCurrency'
      ChenhLech           : abap.dec(24,9);
      @Semantics.amount.currencyCode: 'ConditionCurrency'
      GiaInvHaiQuan       : abap.dec(24,9);
      @Semantics.amount.currencyCode: 'ConditionCurrency'
      GiaInvKhachHang     : abap.dec(24,9);
      @Semantics.amount.currencyCode: 'ConditionCurrency'
      NgoaiTe             : abap.dec(24,9);
      @Semantics.amount.currencyCode: 'ConditionCurrency'
      ThanhTien           : abap.dec(24,9);

      // Get by Logic ECUS
      LoaiDaSlabE62       : abap.string;
      LoaiDaCutToSizeE62  : abap.string;
      LoaiDaMauBanE62     : abap.string;
      LoaiDaMauTangE62    : abap.string;
      LoaiDaMauTangH21    : abap.string;
      LoaiDaGiaCongE52    : abap.string;

      // Parameter Only
      ToChucBanHang       : bukrs; // ZI_COMPANYCODE_VH-CompanyCode

}
