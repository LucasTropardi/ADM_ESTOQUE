inherited Frm_conta_receber: TFrm_conta_receber
  Hint = 'Sair do sistema'
  Caption = 'RECEBIMENTO DE CONTAS'
  ClientHeight = 390
  ClientWidth = 761
  ExplicitWidth = 767
  ExplicitHeight = 419
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel [0]
    Left = 18
    Top = 205
    Width = 75
    Height = 13
    Caption = 'ID_SEQUENCIA'
  end
  object Label6: TLabel [1]
    Left = 156
    Top = 205
    Width = 84
    Height = 13
    Caption = 'VALOR_PARCELA'
  end
  object Label7: TLabel [2]
    Left = 315
    Top = 205
    Width = 84
    Height = 13
    Caption = 'DT_VENCIMENTO'
  end
  object Label8: TLabel [3]
    Left = 465
    Top = 205
    Width = 81
    Height = 13
    Caption = 'DT_PAGAMENTO'
  end
  object Label9: TLabel [4]
    Left = 624
    Top = 205
    Width = 41
    Height = 13
    Caption = 'ATRASO'
  end
  object Label10: TLabel [5]
    Left = 18
    Top = 259
    Width = 33
    Height = 13
    Caption = 'JUROS'
  end
  object Label11: TLabel [6]
    Left = 156
    Top = 259
    Width = 50
    Height = 13
    Caption = 'VL_JUROS'
  end
  object Label12: TLabel [7]
    Left = 313
    Top = 259
    Width = 72
    Height = 13
    Caption = 'TOTAL_PAGAR'
  end
  object Label13: TLabel [8]
    Left = 624
    Top = 259
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object Label2: TLabel [9]
    Left = 18
    Top = 128
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [10]
    Left = 156
    Top = 128
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [11]
    Left = 527
    Top = 128
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit4
  end
  object Label1: TLabel [12]
    Left = 18
    Top = 80
    Width = 50
    Height = 13
    Caption = 'ID_VENDA'
    FocusControl = DBEdit1
  end
  object Label14: TLabel [13]
    Left = 18
    Top = 128
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit14
  end
  object Label15: TLabel [14]
    Left = 156
    Top = 128
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit15
  end
  object Label16: TLabel [15]
    Left = 527
    Top = 128
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit16
  end
  object Label17: TLabel [16]
    Left = 18
    Top = 80
    Width = 50
    Height = 13
    Caption = 'ID_VENDA'
    FocusControl = DBEdit17
  end
  inherited Panel1: TPanel
    Width = 761
    Height = 57
    ExplicitWidth = 761
    ExplicitHeight = 57
    inherited btn_novo: TBitBtn
      Visible = False
    end
    inherited btn_deletar: TBitBtn
      Left = 154
      Visible = False
      ExplicitLeft = 154
    end
    inherited btn_editar: TBitBtn
      Left = 36
      Top = 4
      ExplicitLeft = 36
      ExplicitTop = 4
    end
    inherited btn_gravar: TBitBtn
      Left = 358
      Top = 0
      Visible = False
      ExplicitLeft = 358
      ExplicitTop = 0
    end
    inherited btn_cancelar: TBitBtn
      Left = 170
      Top = 4
      ExplicitLeft = 170
      ExplicitTop = 4
    end
    inherited btn_atualizar: TBitBtn
      Left = 293
      Top = 4
      ExplicitLeft = 293
      ExplicitTop = 4
    end
    object btn_imprimir: TBitBtn
      Left = 517
      Top = 4
      Width = 92
      Height = 45
      Caption = '&Imprimir'
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000008888881E00000019000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000008989890DC3C3BC45CECE
        C989D2D2CCCAD8D8D3F4C9C9C3E56F6F6D8E00000013000000008B8B8B0B4E4E
        4E2A000000190000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000007F7F7F10C4C4BE53D1D1CCA3D6D6D1E5E3E3DDFFEEEE
        E8FFEBEBE4FFE5E5DFFFF2F2EBFFEAEAE4FF7A7A77BBA2A2A3A2D2D2D2E0BCBC
        BCFB797979E015202D760000000E140000194E23034100000036000000060000
        000000000000000000000000000000000000000000000000000000000000A5A5
        A511ACACA54DBABAB59DC9C9C4E6E3E3DDFFEFEFE9FFE8E8E1FFE3E3DDFFE4E4
        DEFFE6E6E0FFE8E8E2FFE9E9E3FFF2F2ECFFF1F1EBFFA5A5A5FFB0B0B0FFB5B5
        B6FFB1B1B2FF84694CFF925004D8C6710DEFDC8317FFBC6F1AFB5B2D0BB70000
        0037000000000000000000000000000000000000000000000000FFFFFF01ADAD
        A651BEBEB6CCD8D8D0FFDDDDD6FFE0E0DAFFE6E6E0FFE7E7E1FFE9E9E3FFEBEB
        E5FFEDEDE7FFEFEFE9FFF1F1EBFFF3F3EDFFFFFFFCFFB1B1ADFF555556FF7E7F
        81FF7F8081FFE28E25FFFFA31CFFFFA123FFF7A132FFF8AF47FFC7822BFF5D28
        00EA270B006D0000000500000000000000000000000000000000000000000000
        000000000005A5A5A17EDCDCD6FBEDEDE7FFEDEDE7FFEFEFE9FFF1F1EBFFF3F3
        EDFFF5F5EFFFF7F7F1FFF9F9F3FFFBFBF5FFFFFFFBFFF5F5F1FF4F4F4FFF2727
        27FF191B1FFF78511FFFDDA04AFFC3A379FFCAA764FFE8B23DFFBC8320FF6143
        26FF4B2D1AFF3C1600A900000025000000000000000000000000000000000000
        0000A9A9A954BCBCBDFDC6C8CAFFE9EDECFFFAFAF5FFF6F6F0FFF9F9F2FFFAFA
        F4FFFCFCF6FFFEFEF8FFFEFEF9FFFFFFFAFFFFFFFAFFFFFFFFFFA8A8A5FF0606
        07FF2B2B2AFF404346FF6B6F74FF717D92FFAE8631FFEC9500FFB6750CFF3639
        3FFF2C3134FF523F33FF44200CDC190000590000000000000000000000000000
        0000FFFFFF08BACADE3F9A9690BEAD9E8AFFFBFBF5FFFEFEFBFFFEFEF8FFFFFF
        FAFFFFFFFBFFFFFFFCFFFFFFFEFFFFFFFFFFFFFFFEFFFCFCFAFFFBFBF6FF7272
        70FF29292AFF343535FF404142FF4C5159FF9D722BFFD79833FFAD7328FF3C37
        35FF222325FF3B3F41FF56504DFF4C3022FD1F05008900000009000000000000
        000000000000CC740070EA8A0CDEBE6400FAB28963FDFFFFFFFFFFFFFEFFFFFF
        FFFFFFFFFEFFFEFEFAFFF4F5F1FFE5E5E1FFD1D1CCFFB7B7B1FF9C9C96FF7E7E
        78FF272724FF000000FF232323FF393D41FF8A6637FFB69C7BFFA46E37FF3D37
        33FF1C1E1FFF2D2D2DFF4A4C4DFF5D5D5EFF4C4542FA26262642000000000000
        000000000000EE9422BBFFAA2FFFF3A034FC7B4A18F7C2C2C2FDFFFFFFFFEBEB
        E6FFD6D6D1FFBDBDB8FFA0A09AFF7F7F79FF5D5D57FF3F3F3BFF292926FF2020
        1FFF252524FF262626FF2B2B2BFF191E22FF81582FFFC39870FFA36C3DFF3D38
        35FF17181AFF232323FF3B3B3BFF515151FF696A6BFF585858A5000000000000
        000000000000FEBA4756F5B541FAA5977FFF1C2024FF1F2021FF82827EFF8989
        82FF65655FFF454540FF2E2E2AFF20201EFF1C1C1BFF1F1F1FFF232323FF2525
        25FF222223FF1B1B1BFF121212FF000203FF724B30FFBC927AFF9D6341FF3F3A
        37FF111213FF1D1D1DFF2E2E2EFF474747FF5C5C5CFF535353B5000000000000
        000000000000B08A3895BC9C59FF706C62FF06090CFF000000FF000000FF1A1A
        18FF1E1E1DFF1D1D1DFF212121FF232324FF212122FF1B1B1BFF121212FF0A0A
        0AFF050505FF040404FF060607FF050A0BFF7B442DFFD56C41FFA55B3BFF3F3E
        3DFF0A0C0DFF181818FF232323FF3C3C3CFF525252FF4B4B4BB3000000000000
        000000000000AC752398C58B39FF635A4FFF16181BFF1E1E1EFF252525FF2323
        23FF212121FF1B1B1BFF0F0F0FFF050505FF040404FF040404FF060606FF0D0D
        0DFF171717FF242424FF353535FF3D4346FF9F7562FFEBA37FFFB77A5DFF4F47
        45FF020506FF131313FF1A1A1AFF2F2F2FFF484848FF434343B5000000000000
        000000000000DA831899E28B26FF4C453EFF1A1C1FFF1C1C1CFF121212FF0A0A
        0AFF050505FF020202FF131313FF2D2D2DFF2D2D2DFF252525FF343434FF4A4A
        4AFF616161FF777777FF8A8A8AFF929597FFC1B1A4FFFFDFBCFFE3BE9DFF7F63
        5AFF19222BFF020507FF0F0F0FFF222222FF3E3E3EFF3B3B3BB7000000000000
        000000000000CF762A9BD67F38FF38312CFF000001FF040404FF060606FF0B0B
        0BFF141414FF202020FF444444FF606060FF6C6C6CFF838383FF9B9B9BFFABAB
        ABFFB3B3B3FFB2B2B2FFA6A6A6FF8D8D8EFF777878FFDAC290FFFCD47DFFC389
        34FF815A37FF40393AFF131821FF0C0F13FF2E2E2EFF343434B9000000000000
        000000000000C86D369FCA6E3EFF332C29FF0C0E0FFF212121FF373737FF5454
        54FF737373FF929292FFA9A9A9FFBBBBBBFFC6C6C6FFC6C7C8FFBBBDC0FFA5A6
        A7FF888888FF727272FF686868FF6E6E6EFF7F8185FFC1BAA9FFEDC36CFFE49D
        09FFDB8900FFBF7A0CFF885E2CFF41362FFF20252DFF23272ABC000000000000
        000000000000C86B46A3CC7653FF706A68FF7A7C7DFFA2A2A2FFBFBEBEFFD2D2
        D2FFDCDCDCFFDADADAFFCCCCCCFFB7B8B8FFA1A5ADFF8B8B8CFF797261FF7D7F
        84FFA0A3ADFFBCBCBBFFD9D9D9FFF0F0F0FFFCFCFCFFF4F6FAFFE4E9F3FFDAD0
        BDFFDAB363FFE09E14FFE09200FFCD8508FF936221FF44352DC5000000000000
        000000000000EAC8B992FFF1E8FFEDEAE9FFEDEFF3FFEFEFEFFFDFDFDFFFC8C8
        C8FFB0B0B0FF9F9F9FFF9B9C9EFF95928DFF937028FFB07918FFC5842BFFDFAC
        29FFE9DCA2FFF1F2F9FFE6E6E6FFD4D4D4FFC3C3C2FFB4B4B1FFB2B2AFFFB2B6
        BEFFA7A295FFC49537FFDE9200FFE29A00F5E29702CE9052144A000000000000
        000000000000FEFEFE2EFEFEFEF9FFFFFFFFE5E1D9FFAEB2BCFFAEB3BDFFB9BA
        BCFFC4C3C3FFD8D8D8FFF2F2F2FFFDFDFDFFE9E0C6FFDEC486FFDEC086FFCEB4
        68FFB4AB7FFFB2B3B3FFABABA6FFA5A59FFFA4A49EFFA9A9A2FFB0B0AAFFB9BB
        B7FFA29169FF8C6D2EFFA89B7DFF7F73586E0000000000000000000000000000
        00000000000000000000F5ECD937F5D58CA1DFA633EDC18D22FFC3AB7AFFDBDB
        DBFFECF2FFFFE4E8F0FFB3B7C0FF8F9299FF73757AFF3B3F48FF474B4FFFB4B8
        BFFFB0B2B3FFB5B4ADFFBCBCB5FFC3C3BDFFC9C9C3FFCECEC7FFD1D1CAFFD7D7
        D0FFC5C9CBFF8B8174FFB89E7EF7958FA7290000000000000000000000000000
        000000000000000000000000000000000000E6850015F49E0062D78A00BCC185
        0AFCC8A151FFB8A377FF665021FF443310FF31302EFF303031FF2B2B2BFFB7B9
        B6FFDADAD4FFD6D6D0FFD7D7D1FFD8D8D2FFD8D8D3FFD9D9D3FFD9D9D4FFD9D9
        D4FFE0E5E6FFC8A167FFBF760AFE954E00410000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FEA7
        0029E38F0070D58A008EEA9E007FD596135D79756E8D898A8BC7747371D7B9B2
        A5FBE6E7E3FFDCDCD6FFDDDDD8FFE0E0DBFFE2E2DDFFE4E4DFFFE5E5E0FFE5E5
        E0FFE9ECECFFD7CAB3FFDB9832FFBA7D289C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000CDA5
        64B4EAE9E1FFDDDED9FFDEDED8FFDFDFDAFFE2E2DCFFE4E4DFFFE7E7E2FFE9E9
        E4FFE9E9E5FFE4E6E2FFE1AE5EFFD5973AE63F00000800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000CF90
        2F5CEFE1C6FFE4E7E6FFE4E4DFFFE5E5E0FFE6E6E0FFE7E7E1FFE8E8E2FFE9E9
        E3FFEAEAE4FFECF2F3FFE8CA99FFF7B751FFA769284600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000D66B
        0013E6CA9AF1F0F3F3FFEBEBE5FFECECE6FFEDEDE7FFEEEEE8FFEFEFE9FFEFEF
        EAFFF0F0EBFFF1F4F2FFEDE4D0FFFFDA6FFFC68A43A200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000F3C67CACFFFEF1FFF0F1EDFFF2F2ECFFF2F2ECFFF1F1ECFFF1F1ECFFF1F1
        ECFFF1F1ECFFF1F1EDFFF8F8F4FFFBDB98A4E2A44E3E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FEC4584EF5E4C3FFE4E7E7FFEAEAE5FFEEEEEAFFF1F1ECFFF2F2EDFFF2F2
        EDFFF2F2EDFFF1F1ECFFFFFFFFFFEDF5FF660000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000CDC7B580DBDCD8FFD5D5D0FFDBDBD6FFE1E1DDFFE6E6E2FFEAEA
        E5FFEAEAE6FFE9E9E5FFF8F8F3FFE5E5E1AA0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000A8ADAD35BBBAB5FFBBBBB5FFC0C0BAFFC7C7C1FFCFCFC9FFD7D7
        D1FFDEDED8FFE3E3DDFFF2F2EBFFD8D8D3CC0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000008D8D8D1B9D9D97FFAAAAA4FFA5A59FFFA9A9A2EDB0B0A9D1B5B5
        B0B2BCBCB792C2C2BB72CFCFC956D0D0CA310000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000007575750D8888827994948B569595902E96969611000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 6
      OnClick = btn_imprimirClick
    end
  end
  inherited Panel2: TPanel
    Top = 319
    Width = 761
    ExplicitTop = 320
    ExplicitWidth = 759
  end
  inherited DBNavigator1: TDBNavigator
    Left = 144
    Top = 328
    Hints.Strings = ()
    ExplicitLeft = 144
    ExplicitTop = 328
  end
  inherited BitBtn1: TBitBtn
    Left = 406
    Top = 4
    OnClick = BitBtn1Click
    ExplicitLeft = 406
    ExplicitTop = 4
  end
  inherited btn_sair: TBitBtn
    Left = 632
    Top = 4
    ExplicitLeft = 632
    ExplicitTop = 4
  end
  object DBEdit2: TDBEdit [22]
    Left = 18
    Top = 147
    Width = 132
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit3: TDBEdit [23]
    Left = 156
    Top = 147
    Width = 365
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit4: TDBEdit [24]
    Left = 527
    Top = 147
    Width = 212
    Height = 21
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit1: TDBEdit [25]
    Left = 18
    Top = 99
    Width = 132
    Height = 21
    DataField = 'ID_VENDA'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object RadioGroup1: TRadioGroup [26]
    Left = 8
    Top = 63
    Width = 743
    Height = 120
    Caption = 'DADOS DA VENDA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit14: TDBEdit [27]
    Left = 18
    Top = 147
    Width = 132
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DBEdit15: TDBEdit [28]
    Left = 156
    Top = 147
    Width = 365
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DBEdit16: TDBEdit [29]
    Left = 527
    Top = 147
    Width = 212
    Height = 21
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 12
  end
  object DBEdit17: TDBEdit [30]
    Left = 18
    Top = 99
    Width = 132
    Height = 21
    DataField = 'ID_VENDA'
    DataSource = ds_padrao
    TabOrder = 13
  end
  object RadioGroup2: TRadioGroup [31]
    Left = 10
    Top = 185
    Width = 743
    Height = 128
    Caption = 'DADOS DA PARCELA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object DBEdit10: TDBEdit [32]
    Left = 18
    Top = 278
    Width = 132
    Height = 21
    DataField = 'JUROS'
    DataSource = ds_receber
    TabOrder = 15
    OnExit = DBEdit10Exit
  end
  object DBEdit11: TDBEdit [33]
    Left = 156
    Top = 278
    Width = 151
    Height = 21
    DataField = 'VL_JUROS'
    DataSource = ds_receber
    TabOrder = 16
  end
  object DBEdit12: TDBEdit [34]
    Left = 313
    Top = 278
    Width = 296
    Height = 21
    DataField = 'TOTAL_PAGAR'
    DataSource = ds_receber
    TabOrder = 17
  end
  object DBEdit13: TDBEdit [35]
    Left = 624
    Top = 278
    Width = 115
    Height = 21
    DataField = 'STATUS'
    DataSource = ds_receber
    TabOrder = 18
  end
  object DBEdit9: TDBEdit [36]
    Left = 624
    Top = 224
    Width = 115
    Height = 21
    DataField = 'ATRASO'
    DataSource = ds_receber
    TabOrder = 19
  end
  object DBEdit8: TDBEdit [37]
    Left = 465
    Top = 224
    Width = 144
    Height = 21
    DataField = 'DT_PAGAMENTO'
    DataSource = ds_receber
    TabOrder = 20
    OnExit = DBEdit8Exit
  end
  object DBEdit7: TDBEdit [38]
    Left = 313
    Top = 224
    Width = 134
    Height = 21
    DataField = 'DT_VENCIMENTO'
    DataSource = ds_receber
    TabOrder = 21
  end
  object DBEdit6: TDBEdit [39]
    Left = 156
    Top = 224
    Width = 151
    Height = 21
    DataField = 'VALOR_PARCELA'
    DataSource = ds_receber
    TabOrder = 22
  end
  object DBEdit5: TDBEdit [40]
    Left = 16
    Top = 224
    Width = 134
    Height = 21
    DataField = 'ID_SEQUENCIA'
    DataSource = ds_receber
    TabOrder = 23
  end
  inherited Q_padrao: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT '
      '     A.ID_VENDA,'
      '     A.ID_CLIENTE,'
      '     B.NOME,'
      '     B.CPF /*,'
      '     C.ID_SEQUENCIA,'
      '     C.VALOR_PARCELA,'
      '     C.DT_VENCIMENTO,'
      '     C.DT_PAGAMENTO,'
      '     C.ATRASO,'
      '     C.JUROS,'
      '     C.VL_JUROS,'
      '     C.TOTAL_PAGAR,'
      '     C.STATUS */'
      'FROM VENDA A'
      'INNER JOIN CLIENTE B ON B.ID_CLIENTE = A.ID_CLIENTE'
      'INNER JOIN CONTAS_RECEBER C ON C.ID_VENDA = A.ID_VENDA'
      '/*WHERE STATUS = '#39'EM ABERTO'#39'*/'
      'ORDER BY A.ID_VENDA;')
    Left = 528
    Top = 80
    object Q_padraoID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object Q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_padraoCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = []
      ReadOnly = True
      Size = 16
    end
  end
  inherited ds_padrao: TDataSource
    Left = 632
    Top = 72
  end
  object Q_receber: TFDQuery
    Active = True
    IndexFieldNames = 'ID_VENDA'
    MasterSource = ds_padrao
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      '     ID_SEQUENCIA,'
      '     ID_VENDA,'
      '     VALOR_PARCELA,'
      '     DT_VENCIMENTO,'
      '     DT_PAGAMENTO,'
      '     ATRASO,'
      '     JUROS,'
      '     VL_JUROS,'
      '     TOTAL_PAGAR,'
      '     STATUS'
      'FROM CONTAS_RECEBER'
      'WHERE ID_VENDA = :ID_VENDA'
      'ORDER BY ID_VENDA;')
    Left = 576
    Top = 72
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 25
      end>
    object Q_receberID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_receberID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_receberVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_receberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object Q_receberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object Q_receberATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object Q_receberJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Q_receberVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_receberTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_receberSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
  end
  object ds_receber: TDataSource
    DataSet = Q_receber
    Left = 688
    Top = 64
  end
  object Recibo: TfrxReport
    Version = '2023.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44955.755924606500000000
    ReportOptions.LastChange = 44955.872957974500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 448
    Top = 80
    Datasets = <
      item
        DataSet = frx_empresa
        DataSetName = 'frx_empresa'
      end
      item
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
      end
      item
        DataSet = frx_receber
        DataSetName = 'frx_receber'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frx_empresa
        DataSetName = 'frx_empresa'
        RowCount = 0
        object frx_empresaN_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 11.338590000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DataField = 'N_FANTASIA'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."N_FANTASIA"]')
          ParentFont = False
        end
        object frx_empresaENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 30.236240000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."ENDERECO"]')
          ParentFont = False
        end
        object frx_empresaCNPJ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 68.031540000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CNPJ"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 11.338590000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 30.236240000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 68.031540000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 30.236240000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
        end
        object frx_empresaNUMERO1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 30.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."NUMERO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 30.236240000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cep:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 49.133890000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object frx_empresaBAIRRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 49.133890000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."BAIRRO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 49.133890000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 49.133890000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object frx_empresaUF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 49.133890000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."UF"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 68.031540000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object frx_empresaCEP: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 30.236240000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CEP"]')
          ParentFont = False
        end
        object frx_empresaCIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 49.133890000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CIDADE"]')
          ParentFont = False
        end
        object frx_empresaTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 68.031540000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."TELEFONE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 86.929190000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail:')
          ParentFont = False
        end
        object frx_empresaEMAIL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 86.929190000000000000
          Width = 328.819110000000000000
          Height = 22.677180000000000000
          DataField = 'EMAIL'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."EMAIL"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 11.338590000000000000
          Width = 117.165430000000000000
          Height = 94.488250000000000000
          DataField = 'LOGO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 702.992580000000000000
          Height = 105.826840000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 128.504020000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBO DE PAGAMENTO DE PARCELAS')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
        RowCount = 0
        object frx_padraoID_VENDA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VENDA'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_VENDA"]')
          ParentFont = False
        end
        object frx_padraoID_CLIENTE: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 18.897650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'ID_CLIENTE'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_CLIENTE"]')
          ParentFont = False
        end
        object frx_padraoNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 18.897650000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."NOME"]')
          ParentFont = False
        end
        object frx_padraoCPF: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."CPF"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Venda')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 215.433210000000000000
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        DataSet = frx_receber
        DataSetName = 'frx_receber'
        RowCount = 0
        object frx_receberID_SEQUENCIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 18.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object frx_receberVALOR_PARCELA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 18.677180000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_PARCELA'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."VALOR_PARCELA"]')
          ParentFont = False
        end
        object frx_receberDT_VENCIMENTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 18.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DT_VENCIMENTO'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."DT_VENCIMENTO"]')
          ParentFont = False
        end
        object frx_receberDT_PAGAMENTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 18.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DT_PAGAMENTO'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."DT_PAGAMENTO"]')
          ParentFont = False
        end
        object frx_receberATRASO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 18.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ATRASO'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."ATRASO"]')
          ParentFont = False
        end
        object frx_receberVL_JUROS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 18.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'VL_JUROS'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."VL_JUROS"]')
          ParentFont = False
        end
        object frx_receberTOTAL_PAGAR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 18.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_PAGAR'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."TOTAL_PAGAR"]')
          ParentFont = False
        end
        object frx_receberSTATUS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 18.677180000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."STATUS"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Seq')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor parcela')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pagamento')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Atraso')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor total')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object frx_padraoNOME1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 136.063080000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."NOME"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 109.606370000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Assinado:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 154.960730000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object frx_padraoCPF1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 154.960730000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_padrao."CPF"]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 109.606370000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 109.606370000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 109.606370000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Primeira Via')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 185.196862600000000000
        Top = 566.929500000000000000
        Width = 718.110700000000000000
        DataSet = frx_empresa
        DataSetName = 'frx_empresa'
        RowCount = 0
        object Picture3: TfrxPictureView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 22.677180000000000000
          Width = 117.165430000000000000
          Height = 94.488250000000000000
          DataField = 'LOGO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 15.118120000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DataField = 'N_FANTASIA'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."N_FANTASIA"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 34.015770000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."ENDERECO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 75.590600000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CNPJ"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 34.015770000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 75.590600000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 52.913420000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 52.913420000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."BAIRRO"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 102.047310000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 102.047310000000000000
          Width = 328.819110000000000000
          Height = 22.677180000000000000
          DataField = 'EMAIL'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."EMAIL"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 34.015770000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 34.015770000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."NUMERO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cep:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 34.015770000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CEP"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 374.173470000000000000
          Top = 52.913420000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 52.913420000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 52.913420000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."UF"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 52.913420000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CIDADE"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 75.590600000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."TELEFONE"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 143.622140000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBO DE PAGAMENTO DE PARCELAS')
          ParentFont = False
        end
        object Picture4: TfrxPictureView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 702.992580000000000000
          Height = 117.165430000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 56.692891420000000000
        Top = 774.803650000000000000
        Width = 718.110700000000000000
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
        RowCount = 0
        object Memo49: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VENDA'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_VENDA"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 18.897650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'ID_CLIENTE'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_CLIENTE"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 18.897650000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."NOME"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."CPF"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Venda')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 204.094488190000000000
        Top = 854.173780000000000000
        Width = 718.110700000000000000
        DataSet = frx_receber
        DataSetName = 'frx_receber'
        RowCount = 0
        object Memo57: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 18.677180000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 18.677180000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_PARCELA'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."VALOR_PARCELA"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 18.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DT_VENCIMENTO'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."DT_VENCIMENTO"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 18.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DT_PAGAMENTO'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."DT_PAGAMENTO"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 18.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ATRASO'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."ATRASO"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 18.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'VL_JUROS'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."VL_JUROS"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 18.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_PAGAR'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."TOTAL_PAGAR"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 18.677180000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."STATUS"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Seq')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor parcela')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pagamento')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Atraso')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor total')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 105.826840000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 86.929190000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Assinado:')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 105.826840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 105.826840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 105.826840000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Segunda Via')
          ParentFont = False
        end
        object frx_empresaN_FANTASIA1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 128.504020000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'N_FANTASIA'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_empresa."N_FANTASIA"]')
          ParentFont = False
        end
        object frx_empresaCNPJ1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 147.401670000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_empresa."CNPJ"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 147.401670000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637795275600000
        Top = 525.354670000000000000
        Width = 718.110700000000000000
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - ')
          ParentFont = False
        end
      end
    end
  end
  object frx_padrao: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frx_padrao'
    CloseDataSource = False
    DataSet = Q_padrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 200
    Top = 80
  end
  object frx_receber: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frx_receber'
    CloseDataSource = False
    DataSet = Q_receber
    BCDToCurrency = False
    DataSetOptions = []
    Left = 272
    Top = 80
  end
  object frx_empresa: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frx_empresa'
    CloseDataSource = False
    DataSet = Q_empresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 352
    Top = 80
  end
  object Q_empresa: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT ID_EMPRESA,'
      '       RAZAO_SOCIAL,'
      '       N_FANTASIA,'
      '       ENDERECO,'
      '       NUMERO,'
      '       BAIRRO,'
      '       CIDADE,'
      '       UF,'
      '       CEP,'
      '       TELEFONE,'
      '       CNPJ,'
      '       EMAIL,'
      '       LOGO,'
      '       CADASTRO'
      'FROM EMPRESA')
    Left = 560
    Top = 328
    object Q_empresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_empresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object Q_empresaN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object Q_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_empresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_empresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_empresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 15
    end
    object Q_empresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 15
    end
    object Q_empresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object Q_empresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_empresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object Q_empresaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object ds_empresa: TDataSource
    DataSet = Q_empresa
    Left = 624
    Top = 328
  end
end
