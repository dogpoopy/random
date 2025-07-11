.class Lcom/netease/ntunisdk/google/GooglePGSApi$7;
.super Ljava/lang/Object;
.source "GooglePGSApi.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSApi;->updateAchievement(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/ntunisdk/google/CallBack;)V
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

.field final synthetic val$achievenmentId:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callBack:Lcom/netease/ntunisdk/google/CallBack;

.field final synthetic val$step:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Lcom/netease/ntunisdk/google/CallBack;ILandroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    iput p3, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$step:I

    iput-object p4, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$achievenmentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "GooglePGSApi"

    const-string v1, "null account"

    .line 377
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "GooglePGSApi"

    const-string v0, "null account"

    .line 364
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    goto :goto_0

    .line 366
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$step:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$achievenmentId:Ljava/lang/String;

    iget v2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$step:I

    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/games/AchievementsClient;->increment(Ljava/lang/String;I)V

    .line 368
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$achievenmentId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 360
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi$7;->onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method
