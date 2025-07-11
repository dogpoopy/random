.class Lcom/netease/ntunisdk/google/GooglePGSApi$12;
.super Ljava/lang/Object;
.source "GooglePGSApi.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSApi;->requestEmailFromGoogleAccount(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
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

    .line 505
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$12;->this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$12;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "GooglePGSApi"

    const-string v1, "null signedInAccount"

    .line 518
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$12;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$12;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "GooglePGSApi"

    const-string v0, "null signedInAccount"

    .line 511
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$12;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 505
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi$12;->onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method
