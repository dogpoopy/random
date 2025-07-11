.class Lcom/netease/ntunisdk/base/SDKManager$1;
.super Ljava/lang/Object;
.source "SDKManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnFinishInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SDKManager;->sdkInit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SDKManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SDKManager;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$1;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishInit(I)V
    .locals 3

    .line 100
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SDKManager$1;->a:Lcom/netease/ntunisdk/base/SDKManager;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setExitListener(Lcom/netease/ntunisdk/base/OnExitListener;I)V

    .line 103
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager$1;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SDKManager;->access$000(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/InitCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 104
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkInit;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/model/SdkInit;-><init>()V

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/model/SdkInit;->wrapFrom(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 106
    sget-object v1, Lcom/netease/ntunisdk/base/constant/a;->a:Lcom/netease/ntunisdk/base/constant/a;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    :goto_0
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/constant/a;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/netease/ntunisdk/base/model/SdkInit;->code:I

    .line 107
    iput p1, v0, Lcom/netease/ntunisdk/base/model/SdkInit;->subcode:I

    if-nez p1, :cond_1

    .line 108
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->a:Lcom/netease/ntunisdk/base/constant/a;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/netease/ntunisdk/base/constant/a;->b:Lcom/netease/ntunisdk/base/constant/a;

    :goto_1
    iget-object p1, p1, Lcom/netease/ntunisdk/base/constant/a;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/netease/ntunisdk/base/model/SdkInit;->message:Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$1;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/SDKManager;->access$000(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/InitCallback;

    move-result-object p1

    iget v1, v0, Lcom/netease/ntunisdk/base/model/SdkInit;->code:I

    iget-object v2, v0, Lcom/netease/ntunisdk/base/model/SdkInit;->message:Ljava/lang/String;

    .line 112
    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkInit;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-interface {p1, v1, v2, v0}, Lcom/netease/ntunisdk/base/callback/InitCallback;->onInitFinished(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
