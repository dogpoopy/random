.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api;->updateAchievement(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/ntunisdk/google/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/SignInCallback<",
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

.field final synthetic val$achievenmentId:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callBack:Lcom/netease/ntunisdk/google/CallBack;

.field final synthetic val$step:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;ILandroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

    iput p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$step:I

    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$achievenmentId:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "GooglePGSApi_V2"

    const-string v1, "null account"

    .line 262
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/games/Player;)V
    .locals 3

    .line 251
    iget p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$step:I

    const/4 v0, 0x1

    .line 256
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-lez p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$achievenmentId:Ljava/lang/String;

    iget v2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$step:I

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/games/AchievementsClient;->increment(Ljava/lang/String;I)V

    .line 253
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$achievenmentId:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$6;->onSuccess(Lcom/google/android/gms/games/Player;)V

    return-void
.end method
