.class final Lcom/netease/ntunisdk/base/JfGas$6;
.super Ljava/lang/Object;
.source "JfGas.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/JfGas;->createOrderTips(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1176
    iput-object p1, p0, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/JfGas$6;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/JfGas$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1179
    iget-object v0, p0, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/JfGas$6;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/JfGas$6;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->showAASDialog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const-string v2, "unisdk_alert_dialog_tips"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1182
    iget-object v0, p0, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const-string v2, "unisdk_alert_dialog_positive"

    invoke-static {v1, v2, v3}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1183
    new-instance v4, Lcom/netease/ntunisdk/base/view/Alerter;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/JfGas$6;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/netease/ntunisdk/base/view/Alerter;-><init>(Landroid/content/Context;)V

    .line 1184
    new-instance v0, Lcom/netease/ntunisdk/base/JfGas$6$1;

    invoke-direct {v0, p0, v7}, Lcom/netease/ntunisdk/base/JfGas$6$1;-><init>(Lcom/netease/ntunisdk/base/JfGas$6;Ljava/lang/String;)V

    .line 1197
    iget-object v6, p0, Lcom/netease/ntunisdk/base/JfGas$6;->b:Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;

    invoke-direct {v9, v0}, Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;-><init>(Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;)V

    invoke-virtual/range {v4 .. v9}, Lcom/netease/ntunisdk/base/view/Alerter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V

    :cond_0
    return-void
.end method
