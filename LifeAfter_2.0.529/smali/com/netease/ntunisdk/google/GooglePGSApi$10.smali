.class Lcom/netease/ntunisdk/google/GooglePGSApi$10;
.super Ljava/lang/Object;
.source "GooglePGSApi.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSApi;->queryMyAccount(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/SignInCallback<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

.field final synthetic val$callBack:Lcom/netease/ntunisdk/google/CallBack;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$10;->this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$10;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "GooglePGSApi"

    const-string v1, "null signedInAccount"

    .line 465
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$10;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    new-instance v1, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>()V

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 449
    new-instance v0, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>()V

    .line 450
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/AccountInfo;->setAccountId(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/AccountInfo;->setIcon(Ljava/lang/String;)V

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/AccountInfo;->setNickname(Ljava/lang/String;)V

    .line 456
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$10;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "GooglePGSApi"

    const-string v0, "null signedInAccount"

    .line 458
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$10;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    new-instance v0, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>()V

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 445
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi$10;->onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method
