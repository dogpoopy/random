.class final Lcom/netease/ntunisdk/base/SdkBase$135$1;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase$135;->processResult(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase$135;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase$135;)V
    .locals 0

    .line 1387
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$135$1;->a:Lcom/netease/ntunisdk/base/SdkBase$135;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1390
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$135$1;->a:Lcom/netease/ntunisdk/base/SdkBase$135;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase$135;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$135$1;->a:Lcom/netease/ntunisdk/base/SdkBase$135;

    iget v1, v1, Lcom/netease/ntunisdk/base/SdkBase$135;->a:I

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;I)V

    .line 1391
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGameLoginSuccess()V

    return-void
.end method
