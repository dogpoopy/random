.class public Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;
.super Landroid/app/Dialog;
.source "ContentDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "D"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/external/protocol/view/ContentView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

.field private mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

.field private mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

.field private mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

.field private mViewStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "unisdk_protocol_dialog"

    const-string v1, "style"

    .line 46
    invoke-static {p1, v0, v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 51
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mContentViews:Ljava/util/HashMap;

    .line 52
    invoke-static {}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getInstance()Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    .line 53
    new-instance p2, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    invoke-direct {p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    .line 54
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->access$000(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->showSubProtocol(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Ljava/util/HashMap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mContentViews:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/ProtocolManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/ContentView;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    return p0
.end method

.method static synthetic access$502(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    return p1
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)Landroid/app/Activity;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->rejectProtocolConfirm(Landroid/content/Context;)V

    return-void
.end method

.method private getContentView(Lcom/netease/ntunisdk/external/protocol/Scene;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;Ljava/lang/String;I)Lcom/netease/ntunisdk/external/protocol/view/ContentView;
    .locals 12

    .line 65
    new-instance v10, Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-object v11, p0

    iget-object v0, v11, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v2

    move-object v0, v10

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;-><init>(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;Ljava/lang/String;I)V

    return-object v10
.end method

.method private static getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getResourcesConfigLocale()Ljava/util/Locale;
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getLocale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JAPAN"

    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    return-object v0

    :cond_0
    const-string v1, "KOREA"

    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    return-object v0

    :cond_1
    const-string v1, "TRADITIONAL_CHINESE"

    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object v0

    :cond_2
    const-string v1, "ENGLISH"

    .line 275
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object v0

    :cond_3
    const-string v1, "SIMPLIFIED_CHINESE"

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    return-object v0

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProp()Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    return-object v2

    :cond_5
    const-string v1, "latest_v23.tw.json"

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 285
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    return-object v0

    :cond_6
    const-string v1, "latest_v35.tw.json"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 287
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    return-object v0

    :cond_7
    const-string v1, "latest_v6.tw.json"

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 289
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object v0

    :cond_8
    return-object v2
.end method

.method private getView()Landroid/view/View;
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    new-instance v3, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$3;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->onCreateView(Landroid/content/Context;Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Lcom/netease/ntunisdk/external/protocol/view/EventCallback;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private onViewCreate()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setCancelable(Z)V

    .line 101
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$1;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 108
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setDialogOnKeyListener()V

    .line 109
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getView()Landroid/view/View;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private rejectProtocolConfirm(Landroid/content/Context;)V
    .locals 7

    .line 299
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;-><init>(Landroid/content/Context;)V

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 301
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getResourcesConfigLocale()Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 305
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 306
    iput-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 307
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    const-string v2, "string"

    const-string v3, "unisdk_protocol_reject_confirm_msg"

    .line 309
    invoke-static {p1, v3, v2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unisdk_protocol_reject_confirm_ok"

    .line 310
    invoke-static {p1, v4, v2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "unisdk_protocol_reject_confirm_back"

    .line 311
    invoke-static {p1, v5, v2}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 312
    new-instance p1, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$4;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$4;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V

    new-instance v6, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$5;

    invoke-direct {v6, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$5;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V

    const-string v1, "  "

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setDialogOnKeyListener()V
    .locals 1

    .line 115
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$2;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private showSubProtocol(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;)V
    .locals 11

    const-string v10, "D"

    .line 221
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$6;->$SwitchMap$com$netease$ntunisdk$external$protocol$Scene:[I

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/Scene;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 238
    :cond_0
    iget-object v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->reviewText:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_1
    iget-object v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_0

    .line 224
    :cond_2
    iget v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->acceptStatus:I

    if-ne v1, v2, :cond_3

    .line 226
    iget-object v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->updateText:Ljava/lang/String;

    .line 227
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 228
    iget-object v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_3
    iget-object v1, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    .line 244
    :cond_4
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "empty  ProtocolText"

    .line 245
    invoke-static {v10, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 250
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    const/4 v1, 0x0

    .line 252
    invoke-interface {v6}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {v6, v1, v2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##fromHtml time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iput v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    .line 256
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProtocolType()I

    move-result v3

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    .line 257
    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getKey()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 256
    invoke-direct/range {v1 .. v9}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getContentView(Lcom/netease/ntunisdk/external/protocol/Scene;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;Ljava/lang/String;I)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-result-object v0

    .line 258
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    .line 259
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mContentViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preDialog Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Lcom/netease/ntunisdk/external/protocol/Scene;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;)V
    .locals 10

    move-object v9, p0

    move-object v1, p2

    .line 84
    iput-object v1, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    move v8, p3

    .line 85
    iput v8, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mViewStyle:I

    move-object v0, p1

    .line 86
    iput-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mActivity:Landroid/app/Activity;

    .line 87
    iget-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mProtocolManager:Lcom/netease/ntunisdk/external/protocol/ProtocolManager;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/ProtocolManager;->getProtocolType()I

    move-result v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getContentView(Lcom/netease/ntunisdk/external/protocol/Scene;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;Ljava/lang/String;I)Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    move-result-object v0

    iput-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    .line 89
    iget-object v0, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mContentViews:Ljava/util/HashMap;

    iget-object v1, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mCurrentContentView:Lcom/netease/ntunisdk/external/protocol/view/ContentView;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public show()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->onViewCreate()V

    .line 95
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->access$100(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Landroid/view/Window;)V

    .line 96
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
