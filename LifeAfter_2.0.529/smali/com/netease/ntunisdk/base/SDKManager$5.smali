.class Lcom/netease/ntunisdk/base/SDKManager$5;
.super Ljava/lang/Object;
.source "SDKManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SDKManager;->setShareCallback(Lcom/netease/ntunisdk/base/callback/ShareCallback;)V
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

    .line 417
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$5;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareFinished(Z)V
    .locals 3

    .line 420
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkShare;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/model/SdkShare;-><init>()V

    .line 421
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/model/SdkShare;->wrapFrom(Ljava/lang/Object;)V

    .line 422
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$5;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/SDKManager;->access$400(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/ShareCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 423
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$5;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/SDKManager;->access$400(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/ShareCallback;

    move-result-object p1

    iget v1, v0, Lcom/netease/ntunisdk/base/model/SdkShare;->code:I

    iget-object v2, v0, Lcom/netease/ntunisdk/base/model/SdkShare;->message:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkShare;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lcom/netease/ntunisdk/base/callback/ShareCallback;->onShareDone(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
