.class Lcom/netease/ntunisdk/base/SDKManager$2;
.super Ljava/lang/Object;
.source "SDKManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnLoginDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SDKManager;->setLoginCallback(Lcom/netease/ntunisdk/base/callback/LoginCallback;)V
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

    .line 197
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$2;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginDone(I)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SDKManager$2;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SDKManager;->access$100(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/LoginCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Lcom/netease/ntunisdk/base/model/SdkAccount;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/model/SdkAccount;-><init>()V

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/model/SdkAccount;->wrapFrom(Ljava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lcom/netease/ntunisdk/base/SDKManager$2;->a:Lcom/netease/ntunisdk/base/SDKManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/SDKManager;->access$100(Lcom/netease/ntunisdk/base/SDKManager;)Lcom/netease/ntunisdk/base/callback/LoginCallback;

    move-result-object p1

    iget v1, v0, Lcom/netease/ntunisdk/base/model/SdkAccount;->code:I

    iget-object v2, v0, Lcom/netease/ntunisdk/base/model/SdkAccount;->message:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/model/SdkAccount;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lcom/netease/ntunisdk/base/callback/LoginCallback;->onLoginDone(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
