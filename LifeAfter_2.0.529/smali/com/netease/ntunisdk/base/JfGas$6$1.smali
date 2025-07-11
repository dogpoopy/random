.class final Lcom/netease/ntunisdk/base/JfGas$6$1;
.super Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;
.source "JfGas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/JfGas$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/ntunisdk/base/JfGas$6;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/JfGas$6;Ljava/lang/String;)V
    .locals 0

    .line 1184
    iput-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    const-string v0, "UniSDK JfGas"

    const-string v1, "OnSpanClickListener: onFFRulesClicked"

    .line 1187
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v1, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/JfGas$6;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const-string v2, "unisdk_alert_dialog_info"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1191
    new-instance v2, Lcom/netease/ntunisdk/base/view/Alerter;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/netease/ntunisdk/base/view/Alerter;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->c:Lcom/netease/ntunisdk/base/JfGas$6;

    iget-object v4, v0, Lcom/netease/ntunisdk/base/JfGas$6;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/ntunisdk/base/JfGas$6$1;->b:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/netease/ntunisdk/base/view/Alerter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V

    return-void

    :cond_0
    const-string v1, "aasFfRule empty"

    .line 1193
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
