.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$5;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api;->displayAchievement(Landroid/app/Activity;)V
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


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$5;->this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "GooglePGSApi_V2"

    const-string v1, "null account"

    .line 240
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/games/Player;)V
    .locals 1

    .line 228
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$5;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    .line 229
    invoke-interface {p1}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$5$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$5$1;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api$5;)V

    .line 230
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$5;->onSuccess(Lcom/google/android/gms/games/Player;)V

    return-void
.end method
