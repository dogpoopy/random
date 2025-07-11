.class Lcom/netease/ntunisdk/SdkFacebook$1;
.super Ljava/lang/Object;
.source "SdkFacebook.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkFacebook;->checkSession(Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkFacebook;

.field final synthetic val$cb:Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$1;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkFacebook$1;->val$cb:Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "on login callback, login cancelled"

    .line 182
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 188
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook$1;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/SdkFacebook;->resetCommonProp()V

    .line 189
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook$1;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/SdkFacebook;->loginDone(I)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on login callback, login failed, errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UniSDK SdkFacebook"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 176
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$1;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/SdkFacebook;->resetCommonProp()V

    .line 177
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook$1;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->loginDone(I)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSession onSuccess, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkFacebook"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFacebook$1;->this$0:Lcom/netease/ntunisdk/SdkFacebook;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->access$000(Lcom/netease/ntunisdk/SdkFacebook;Lcom/facebook/AccessToken;)V

    .line 167
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook$1;->val$cb:Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;->call(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 160
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
