.class final Lcom/netease/ntunisdk/base/SdkBase$146;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->jfCheckRealNameDone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;I)V
    .locals 0

    .line 1448
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$146;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput p2, p0, Lcom/netease/ntunisdk/base/SdkBase$146;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1451
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$146;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$146;->a:I

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/function/d;->a(Lcom/netease/ntunisdk/base/SdkBase;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1452
    iget v0, p0, Lcom/netease/ntunisdk/base/SdkBase$146;->a:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$146;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->getInstance(Landroid/app/Activity;)Lcom/netease/ntunisdk/base/utils/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/utils/LoadingDialog;->dismiss()V

    .line 1454
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$146;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget v1, p0, Lcom/netease/ntunisdk/base/SdkBase$146;->a:I

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->logoutDone(I)V

    goto :goto_0

    .line 1456
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$146;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;I)V

    .line 1459
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$146;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const/4 v1, 0x0

    const-string v2, "ENABLE_CLIENT_SAUTH"

    invoke-virtual {v0, v2, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1460
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGameLoginSuccess()V

    :cond_1
    return-void
.end method
