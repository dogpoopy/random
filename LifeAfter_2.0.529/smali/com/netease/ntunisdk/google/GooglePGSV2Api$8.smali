.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api;->updateRank(Landroid/app/Activity;Ljava/lang/String;DLcom/netease/ntunisdk/google/CallBack;)V
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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callBack:Lcom/netease/ntunisdk/google/CallBack;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$score:D


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Ljava/lang/String;DLcom/netease/ntunisdk/google/CallBack;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;->this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;->val$id:Ljava/lang/String;

    iput-wide p4, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;->val$score:D

    iput-object p6, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "GooglePGSApi_V2"

    const-string v1, "null account"

    .line 310
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/games/Player;)V
    .locals 3

    .line 304
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;->val$id:Ljava/lang/String;

    iget-wide v1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;->val$score:D

    double-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScore(Ljava/lang/String;J)V

    .line 305
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$8;->onSuccess(Lcom/google/android/gms/games/Player;)V

    return-void
.end method
